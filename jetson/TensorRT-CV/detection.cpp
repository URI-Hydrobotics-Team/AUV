#include "detection.h"

detection::detection(ILogger* t, std::vector<std::string> object_classes, int input_size, int output_channel, int output_dim1, int output_dim2, int model_type){
    count = 0;
    time = 0.0;
    time1 = 0.0;
    count1 = 0;
    logger = t;
    this->input_size = input_size;
    this->output_channel = output_channel;
    this->output_dim1 = output_dim1;
    this->output_dim2 = output_dim2;
    this->object_classes = object_classes;
    
    // Create the cuda stream
    cudaStreamCreate(&stream);

    // if fp16 model is used, do float16 specific operations
    if(model_type == 16){
        // change data size, it is now 2 bytes
        data_size = sizeof(float) / 2;
        // allocate gpu memory for the input tensor to prevent reallocating it everytime during inference
        cudaMalloc((void **)&input_ptr_half, 3 * input_size * input_size * data_size);
        // allocate gpu memory for the output tensor to prevent reallocating it everytime during inference
        cudaMalloc((void **)&output_ptr_half, output_channel * output_dim1 * output_dim2 * data_size);
        // since we will need a new memory to store the float32 value converted from the float16 value later, we will allocate it now
        cudaMalloc((void **)&output_ptr_final, output_channel * output_dim1 * output_dim2 * sizeof(float));
    }

    else{
        // data size here is 4 bytes for float32
        data_size = sizeof(float);
        // allocate gpu memory for input and output tensor
        cudaMalloc((void **)&input_ptr, 3 * input_size * input_size * data_size);
        cudaMalloc((void **)&output_ptr, output_channel * output_dim1 * output_dim2 * data_size);
    }
}

void detection::convert_onnx(){
    // create builder
    builder = createInferBuilder(*logger);
    // create network
    network = builder->createNetworkV2(1U << static_cast<uint32_t>(NetworkDefinitionCreationFlag::kSTRONGLY_TYPED));
    // create parser 
    parser = nvonnxparser::createParser(*network, *logger);

    // use parser to parse the onnx model
    if(!parser->parseFromFile(model_path.c_str(), static_cast<int32_t>(ILogger::Severity::kWARNING))){
        std::cout << "Parser failed\n";
    }
}

void detection::build_engine(std::string filename){
    convert_onnx();
    // create config object, used to set different attributes for the engine building
    config = builder->createBuilderConfig();
    // Allocate 1GB of memory for TensorRT's engine building process
    // 1 << num is a bvitwise operation, essentially meaning 2 to the power of num
    // for example 1U << 30 means 2 ^ 30 bytes
    config->setMemoryPoolLimit(MemoryPoolType::kWORKSPACE, 1U << 30);
    // set the model to optimize for FP16 model
    // config->setFlag(BuilderFlag::kFP16);

    // build the engine model
    IHostMemory* serializedModel = builder->buildSerializedNetwork(*network, *config);

    // no longer need these variables, we delete them
    delete parser;
    delete network;
    delete config;
    delete builder;

    // write the engine model into the filename file in binary format
    std::ofstream disk_writer(filename, std::ios::binary);
    disk_writer.write((const char*)(serializedModel->data()), serializedModel->size());
    disk_writer.close();

    // delete the engine model object
    delete serializedModel;
}

std::vector<char> detection::readModelFromFile(std::string engine_path){
    // read the engine file in binary format
    std::ifstream input(engine_path, std::ios::binary);

    if(!input){
        throw std::runtime_error("Failed to read file");
    }

    // move read position to the end of file
    input.seekg(0, std::ios::end);
    std::streampos file_size;

    // set the file_size to the read position, which is now the end of the file
    file_size = input.tellg();

    // return the read position back to the beginning 
    input.seekg(0, std::ios::beg);

    std::vector<char> model_data(file_size);

    // store the model data into the vector
    input.read(model_data.data(), file_size);

    return model_data;
}

void detection::load_model(std::string engine_path){
    // create a runtime
    runtime = createInferRuntime(*logger);
    
    // get model data 
    std::vector<char> modelData = readModelFromFile(engine_path);

    // deserialize the engine data
    engine = runtime->deserializeCudaEngine(modelData.data(), modelData.size());
    context = engine->createExecutionContext();
}

cv::Mat detection::preprocess(cv::Mat frame){
    cv::Mat blob;

    // converts frame into NCHW format
    // TODO: Implement a CUDA kernel to do this instead of using the blobFromImage function
	cv::dnn::blobFromImage(frame, blob, 1.0 / 255.0, cv::Size(input_size, input_size), cv::Scalar(), true, false);
    return blob;
}

void detection::inference(cv::Mat frame){
    auto start = std::chrono::high_resolution_clock::now();

    x_scale = frame.cols / float(input_size);
    y_scale = frame.rows / float(input_size);
    center_x = frame.cols / 2.0;
    center_y = frame.rows / 2.0;

    // preprocess the frame before inference
    input = preprocess(frame);

    // if the model is a fp16 model, convert frame to FP16 data type
    if(data_size == 2){
        input.convertTo(some, CV_16F);
        cudaMemcpyAsync(input_ptr_half, some.data, some.total() * some.elemSize(), cudaMemcpyHostToDevice, stream);
        context->setTensorAddress("images", input_ptr_half);
        context->setTensorAddress("output0", output_ptr_half);
    }
    else{
        some = input;
        cudaMemcpyAsync(input_ptr, some.data, some.total() * some.elemSize(), cudaMemcpyHostToDevice, stream);
        context->setTensorAddress("images", input_ptr);
        context->setTensorAddress("output0", output_ptr);
    }
    
    // some assertion to make sure things go correctly
    assert(some.data != nullptr);
    assert(3 * input_size * input_size * data_size == some.total() * some.elemSize());

    assert(context != nullptr);
    assert(stream);
    assert(output_ptr != nullptr);

    // perform inference 
    context->enqueueV3(stream);
    
    // wait for the stream to complete
    cudaStreamSynchronize(stream);

    // post process the result
    postprocess();

    auto stop = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> duration = stop - start;

    count1++;

    if(count1 > 9){
        count++;
        time += duration.count();
        std::cout << "detection time: " << time / count << "\n";
    }
}

void detection::postprocess(){
    if(data_size == 2){
        helper::convert(output_dim1 * output_dim2, output_ptr_half, output_ptr_final);
        cudaDeviceSynchronize();
        output_mat = cv::cuda::createGpuMatFromCudaMemory(output_dim1, output_dim2, CV_32F, (size_t)output_ptr_final);
    }

    else{
        output_mat = cv::cuda::createGpuMatFromCudaMemory(output_dim1, output_dim2, CV_32F, (size_t)output_ptr);
    }

    // transpose matrix for better interpretation
    cv::cuda::transpose(output_mat, transposed_output_mat);
    
    
    std::vector<std::string> detected_object;
    std::vector<cv::Rect2d> bounding_box;
    std::vector<float> confidence;
    std::vector<int> indices;

    // download gpu mat value into a cpu mat value
    transposed_output_mat.download(transposed);
    
    //Loop through the transposed output to get the data of all the good detections
    for (int i = 0; i < output_dim2; i++) {
        access_row = transposed.row(i);

        //Find the class with the highest probability of a specific detection
        cv::minMaxLoc(access_row.colRange(4, output_dim1), nullptr, &max_conf, nullptr, &conf_indx);
    
        //If the probability is greater than or equal to 0.4, append all the data into the vectors 
        if (max_conf >= 0.4) {
            float* row_data = access_row.ptr<float>(0);
            float center_x = row_data[0];
            float center_y = row_data[1];
            float width = row_data[2];
            float height = row_data[3];
            int id = conf_indx.x;

            bounding_box.push_back(cv::Rect2d((center_x - (width / 2)) * x_scale, (center_y - (height / 2)) * y_scale, width * x_scale, height * y_scale));
            confidence.push_back(max_conf);
            detected_object.push_back(object_classes[id]);
        }

    }

    //Use NMSBoxes method to filter out the overlapping bounding boxes
    cv::dnn::NMSBoxes(bounding_box, confidence, 0.4, 0.45, indices);

    cv::Rect2d n;
    // float area = 0;
    std::string object;
    for (int i : indices) {
        n = bounding_box[i];
        // area = bounding_box[i].width * bounding_box[i].height;
        object = detected_object[i];
        std::cout << "Object: " << object << " | " << "X offset: " << (n.x + n.width / 2) - center_x << " | " << "Y offset: " << center_y - (n.y + n.height / 2) << "\n";
    }

    // release the gpu mat when done
    output_mat.release();
    transposed_output_mat.release();
}

void detection::dec(){
    cudaStreamDestroy(stream);
    cudaFree(input_ptr);
    cudaFree(output_ptr);
}



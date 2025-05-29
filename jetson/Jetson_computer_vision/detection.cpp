#include "detection.h"

detection_model::detection_model(std::string modelPath, std::vector<std::string> object_classes) {
	this->modelPath = modelPath;
	this->object_classes = object_classes;
    center_x = 0;
    center_y = 0;
    x_scale = 1;
    y_scale = 1;
    confidence.reserve(100);
    detected_object.reserve(100);
    bounding_box.reserve(100);

	// Load the model
	model = cv::dnn::readNetFromONNX(modelPath);
}

std::vector<cv::Mat> detection_model::get_model_output(cv::Mat blob) {
    // Pass the frame to the model
    model.setInput(blob);
    std::vector<cv::Mat> output;
    model.forward(output, model.getUnconnectedOutLayersNames());

    return output;
}

void detection_model::detect(cv::Mat frame) {
    bounding_box.clear();
    confidence.clear();
    detected_object.clear();
    indices.clear();

	x_scale = frame.cols / 640.0;
    y_scale = frame.rows / 640.0;
    center_x = frame.cols / 2.0;
    center_y = frame.rows / 2.0;

	// Convert frame
	cv::Mat blob;
	cv::dnn::blobFromImage(frame, blob, 1.0 / 255.0, cv::Size(640, 640), cv::Scalar(), true, false);

    //Get model output
    std::vector<cv::Mat> output = get_model_output(blob);

    //Get the number of classes and the dimension of the output
    int dimension = output[0].size[1];
    int detection_nums = output[0].size[2];

	// Transpose thee output for easier interpretation
	cv::Mat transposed;
	cv::transpose(output[0].reshape(1, dimension), transposed); 

    //Loop through the transposed output to get the data of all the good detections
    cv::Mat access_row;
    for (int i = 0; i < detection_nums; i++) {
        double max_conf;
        cv::Point conf_indx;
        access_row = transposed.row(i);

        //Find the class with the highest probability of a specific detection
        cv::minMaxLoc(access_row.colRange(4, dimension), nullptr, &max_conf, nullptr, &conf_indx);

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
    float area = 0;
    std::string object;
    for (int i : indices) {
        if (bounding_box[i].width * bounding_box[i].height > area) {
            n = bounding_box[i];
            area = bounding_box[i].width * bounding_box[i].height;
            object = detected_object[i];
        }
    }

    std::cout << "Object: " << object << " " << "X offset: " << (n.x + n.width / 2) - center_x << " " << "Y offset: " << center_y - (n.y + n.height / 2) << "\n";
}

std::vector<cv::Rect2d> detection_model::get_detection_coordinates() {
    std::vector<cv::Rect2d> bounding_box_coordinates;
    for (int i : indices) {
        bounding_box_coordinates.push_back(bounding_box[i]);
    }
    return bounding_box_coordinates;
}

std::vector<std::string> detection_model::get_object_name() {
    std::vector<std::string> names;
    for (int i : indices) {
        names.push_back(detected_object[i]);
    }

    return names;
}

std::vector<float> detection_model::get_object_confidence() {
    std::vector<float> confidence;
    for (int i : indices) {
        confidence.push_back(confidence[i]);
    }

    return confidence;
}

cv::Mat detection_model::draw_img(cv::Mat frame, std::vector<cv::Rect2d> coordinates) {
    if (!coordinates.empty()) {
        for (int i = 0; i < coordinates.size(); i++) {
            cv::rectangle(frame, coordinates[i], cv::Scalar(0, 0, 0), 3); // Draw the bounding box
            std::string info = detected_object[i] + ": ";
            info += std::to_string(confidence[i]);
            cv::putText(frame, info, cv::Point(coordinates[i].x, coordinates[i].y), cv::FONT_HERSHEY_SIMPLEX, 0.25, cv::Scalar(0, 255, 255)); // Put text 
        }
    }

    else {
        std::vector<cv::Rect2d> bounding_box_coordinates = get_detection_coordinates();
        for (int i = 0; i < bounding_box_coordinates.size(); i++) {
            cv::rectangle(frame, bounding_box_coordinates[i], cv::Scalar(0, 0, 0), 3);
            std::string info = detected_object[i] + ": ";
            info += std::to_string(confidence[i]);
            cv::putText(frame, info, cv::Point(bounding_box_coordinates[i].x, bounding_box_coordinates[i].y), cv::FONT_HERSHEY_SIMPLEX, 1, cv::Scalar(0, 255, 255));
        }
    }

    return frame;
}





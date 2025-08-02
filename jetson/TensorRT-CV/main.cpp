#include "detection.h"

class Logger : public ILogger
{
    void log(Severity severity, const char* msg) noexcept override{
        if (severity <= Severity::kWARNING){
            std::cout << msg << std::endl;
        }
    }
};


int main(){

    Logger logger;
    std::vector<std::string> object_classes = { "person", "bicycle", "car", "motorbike", "aeroplane", "bus", "train", "truck", "boat", "traffic light", "fire hydrant", "stop sign", "parking meter", "bench", "bird", "cat", "dog", "horse", "sheep", "cow", "elephant", "bear", "zebra", "giraffe", "backpack", "umbrella", "handbag", "tie", "suitcase", "frisbee", "skis", "snowboard", "sports ball", "kite", "baseball bat", "baseball glove", "skateboard", "surfboard", "tennis racket", "bottle", "wine glass", "cup", "fork", "knife", "spoon", "bowl", "banana", "apple", "sandwich", "orange", "broccoli", "carrot", "hot dog", "pizza", "donut", "cake", "chair", "sofa", "pottedplant", "bed", "diningtable", "toilet", "tvmonitor", "laptop", "mouse", "remote", "keyboard", "cell phone", "microwave", "oven", "toaster", "sink", "refrigerator", "book", "clock", "vase", "scissors", "teddy bear", "hair drier", "toothbrush" };
    detection model(&logger, object_classes, 640, 1, 84, 8400, 16);

    // This line is used to build an engine file
    // model.build_engine("yolov8n_fp16_640_op17.engine");

    model.load_model("engine path");

    cv::VideoCapture camera;

    // Warm up to initialize GPU memory, allocation, and the model
    for(int i = 0; i < 10; i++){
        cv::Mat frame = cv::imread("image path");
        std::cout << i << ": ";
        model.inference(frame);
    }

    cv::Mat frame;
    camera.open(0);

    while(true){
        camera.read(frame);

        model.inference(frame);
    }

    model.dec();

    return 0;
}
#include "helper_functions.h"

int main() {
    std::vector<std::string> classes = { "person", "bicycle", "car", "motorbike", "aeroplane", "bus", "train", "truck", "boat", "traffic light", "fire hydrant", "stop sign", "parking meter", "bench", "bird", "cat", "dog", "horse", "sheep", "cow", "elephant", "bear", "zebra", "giraffe", "backpack", "umbrella", "handbag", "tie", "suitcase", "frisbee", "skis", "snowboard", "sports ball", "kite", "baseball bat", "baseball glove", "skateboard", "surfboard", "tennis racket", "bottle", "wine glass", "cup", "fork", "knife", "spoon", "bowl", "banana", "apple", "sandwich", "orange", "broccoli", "carrot", "hot dog", "pizza", "donut", "cake", "chair", "sofa", "pottedplant", "bed", "diningtable", "toilet", "tvmonitor", "laptop", "mouse", "remote", "keyboard", "cell phone", "microwave", "oven", "toaster", "sink", "refrigerator", "book", "clock", "vase", "scissors", "teddy bear", "hair drier", "toothbrush" };
    std::string path = "/home/hydro/AUV/AUV/jetson/Jetson_computer_vision/testing_model.onnx";

    std::thread a;
    std::thread odom;
    std::thread camera;
    std::thread detect;

    // start the threads
    camera = std::thread(camera_capture);
    //a = std::thread(rtsp_server);
    detect = std::thread(model_detection, path, classes);
    odom = std::thread(visual_odometry);

    camera.join();
    //a.join();
    detect.join();
    odom.join();

    return 0;
}
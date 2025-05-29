#include "detection.h"
#include <iostream>
#include <chrono>


int main() {
    cv::Mat frame;
    // cv::Mat frame1;
    // cv::Mat frame2;
    cv::VideoCapture cam;
    // cv::VideoCapture cam2;
    // cv::VideoCapture cam3;

    cam.open(0);
    // cam2.open(1);
    // cam3.open(2);

    std::vector<std::string> classes = {};

    std::string path = "model path";
    detection_model model(path, classes);

    while (true) {
        auto start = std::chrono::high_resolution_clock::now();

        cam.read(frame);
        // cam2.read(frame1);
        // cam3.read(frame2);

        if (frame.empty()) {
            std::cout << "ERROR! blank frame grabbed\n";
            break;
        }

        model.detect(frame);
        frame = model.draw_img(frame);

        // model.detect(frame1);
        // frame1 = model.draw_img(frame1);

        // model.detect(frame2);
        // frame2 = model.draw_img(frame2);

        cv::imshow("output", frame);
        // cv::imshow("output1", frame1);
        // cv::imshow("output2", frame2);

        auto end = std::chrono::high_resolution_clock::now();

        auto duration = std::chrono::duration_cast<std::chrono::microseconds>(end - start);

        std::cout << "Function execution time: " << duration.count() << " microseconds" << std::endl;


        if (cv::waitKey(1) == 27) {
            break;
        }
    }

    cam.release();
    cv::destroyAllWindows();
}
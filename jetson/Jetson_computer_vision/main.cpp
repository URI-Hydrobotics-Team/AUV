#include "detection.h"
#include <iostream>
#include <chrono>
#include <thread>
#include <gst/gst.h>
#include <gst/rtsp-server/rtsp-server.h>


int main() {
    // Initialize the gstreamer object
    gst_init(nullptr, nullptr);
    GstRTSPServer *server;
    GMainLoop *loop;
    GstRTSPMediaFactory *factory;
    GstRTSPMountPoints *mounts;

    // Create a new server
    server = gst_rtsp_server_new();
    // Create a loop that the server will run in
    loop = g_main_loop_new(NULL, false);
    factory = gst_rtsp_media_factory_new();
    gst_rtsp_media_factory_set_launch(factory, "( udpsrc port=5000 ! queue ! application/x-rtp,encoding-name=H264 ! rtpjitterbuffer ! rtph264depay ! h264parse ! queue ! rtph264pay name=pay0 pt=96 )");
    mounts = gst_rtsp_server_get_mount_points(server);
    gst_rtsp_mount_points_add_factory(mounts, "/cam1", factory);

    // factory = gst_rtsp_media_factory_new();
    // gst_rtsp_media_factory_set_launch(factory, "( udpsrc port=5001 ! queue ! application/x-rtp,encoding-name=H264 ! rtpjitterbuffer ! rtph264depay ! h264parse ! queue ! rtph264pay name=pay0 pt=96 )");
    // gst_rtsp_mount_points_add_factory(mounts, "/cam2", factory);

    // factory = gst_rtsp_media_factory_new();
    // gst_rtsp_media_factory_set_launch(factory, "( udpsrc port=5002 ! queue ! application/x-rtp,encoding-name=H264 ! rtpjitterbuffer ! rtph264depay ! h264parse ! queue ! rtph264pay name=pay0 pt=96 )");
    // gst_rtsp_mount_points_add_factory(mounts, "/cam3", factory);

    g_object_unref(mounts);

    gst_rtsp_server_attach(server, NULL);

    // Add a new thread to allow the server to run concurrently with the opencv process 
    std::thread thread1(g_main_loop_run, loop);

    cv::Mat frame;
    // cv::Mat frame1;
    // cv::Mat frame2;
    cv::VideoCapture cam;
    // cv::VideoCapture cam2;
    // cv::VideoCapture cam3;

    cam.open(0);
    // cam2.open(1);
    // cam3.open(2);

    int w = cam.get(cv::CAP_PROP_FRAME_WIDTH);
    int h = cam.get(cv::CAP_PROP_FRAME_HEIGHT);
    float fps = cam.get(cv::CAP_PROP_FPS); 
    cv::VideoWriter writer1("appsrc ! video/x-raw, format=BGR ! queue ! videoconvert ! video/x-raw,format=BGRx ! nvvidconv ! nvv4l2h264enc ! h264parse ! rtph264pay pt=96 config-interval=1 ! udpsink host=127.0.0.1 port=5000", cv::CAP_GSTREAMER, fps, cv::Size(w, h), true);

    // int w2 = cam2.get(cv::CAP_PROP_FRAME_WIDTH);
    // int h2 = cam2.get(cv::CAP_PROP_FRAME_HEIGHT);
    // float fps2 = cam.get(cv::CAP_PROP_FPS); 
    // cv::VideoWriter writer2("appsrc ! videoconvert ! video/x-raw,format=I420 ! x264enc key-int-max=30 insert-vui=1 tune=zerolatency ! h264parse ! rtph264pay ! udpsink host=127.0.0.1 port=5001", cv::CAP_GSTREAMER, fps2, cv::Size(w2, h2), true);

    // int w3 = cam3.get(cv::CAP_PROP_FRAME_WIDTH);
    // int h3 = cam3.get(cv::CAP_PROP_FRAME_HEIGHT);
    // float fps3 = cam3.get(cv::CAP_PROP_FPS); 
    // cv::VideoWriter writer3("appsrc ! videoconvert ! video/x-raw,format=I420 ! x264enc key-int-max=30 insert-vui=1 tune=zerolatency ! h264parse ! rtph264pay ! udpsink host=127.0.0.1 port=5002", cv::CAP_GSTREAMER, fps, cv::Size(w, h), true);
    
    std::vector<std::string> classes = {"person", "bicycle", "car", "motorbike", "aeroplane", "bus", "train", "truck", "boat", "traffic light", "fire hydrant", "stop sign", "parking meter", "bench", "bird", "cat", "dog", "horse", "sheep", "cow", "elephant", "bear", "zebra", "giraffe", "backpack", "umbrella", "handbag", "tie", "suitcase", "frisbee", "skis", "snowboard", "sports ball", "kite", "baseball bat", "baseball glove", "skateboard", "surfboard", "tennis racket", "bottle", "wine glass", "cup", "fork", "knife", "spoon", "bowl", "banana", "apple", "sandwich", "orange", "broccoli", "carrot", "hot dog", "pizza", "donut", "cake", "chair", "sofa", "pottedplant", "bed", "diningtable", "toilet", "tvmonitor", "laptop", "mouse", "remote", "keyboard", "cell phone", "microwave", "oven", "toaster", "sink", "refrigerator", "book", "clock", "vase", "scissors", "teddy bear", "hair drier", "toothbrush"};

    std::string path = "/home/hydro/AUV/AUV/jetson/Jetson_computer_vision/testing_model.onnx";
    detection_model model(path, classes);
    std::cout << "Model is now running\n";
    while (true) {
        auto start = std::chrono::high_resolution_clock::now();
        cam.read(frame);
        // cam2.read(frame1);
        // cam3.read(frame2);
        writer1.write(frame);
        if (frame.empty()) {
            std::cout << "ERROR! blank frame grabbed\n";
            thread1.join();
            break;
        }
        // Perform detection
        model.detect(frame);
        // frame = model.draw_img(frame);

        // model.detect(frame1);
        // frame1 = model.draw_img(frame1);

        // model.detect(frame2);
        // frame2 = model.draw_img(frame2);

        // cv::imshow("output", frame);
        // cv::imshow("output1", frame1);
        // cv::imshow("output2", frame2);

        auto end = std::chrono::high_resolution_clock::now();

        auto duration = std::chrono::duration_cast<std::chrono::microseconds>(end - start);
        std::cout << "Function execution time: " << duration.count() << " microseconds" << std::endl;

        // if (cv::waitKey(1) == 27) {
        //     break;
        // }
    }

    cam.release();
    cv::destroyAllWindows();
}
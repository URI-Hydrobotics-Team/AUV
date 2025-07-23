#pragma once
#include <iostream>
#include <chrono>
#include <gst/gst.h>
#include <gst/rtsp-server/rtsp-server.h>
#include <thread>
#include <mutex>
#include <condition_variable>
#include <queue>
#include <memory>
#include "visual-odometry.h"
#include "detection.h"

// frames capture from the camera
extern cv::Mat frame1;
extern cv::Mat frame2;

// mutex to be used with condition variable 
extern std::mutex camera_lock;
extern std::mutex cv_lock;
extern std::mutex slam_lock;

// condition variable used to wake up different function under different circumstances
extern std::condition_variable condition;

// queues to store share pointers to the captured frames to allow processes to process them at their own pace
extern std::queue<std::shared_ptr<cv::Mat>> cv_queue;
extern std::queue<std::shared_ptr<cv::Mat>> visual_queue;

// function to open camera to capture frames
void camera_capture();

// function to run rtsp server
void rtsp_server();

// function to run model detection on frames
void model_detection(std::string model_path, std::vector<std::string> classes);

// function to do visual odometry
void visual_odometry();

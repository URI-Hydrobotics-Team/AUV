#include "helper_functions.h"

bool slam_ready = false;
cv::Mat frame1;
cv::Mat frame2;
std::mutex camera_lock;
std::mutex cv_lock;
std::mutex slam_lock;
std::condition_variable condition;
std::queue<std::shared_ptr<cv::Mat>> cv_queue;
std::queue<std::shared_ptr<cv::Mat>> visual_queue;

void camera_capture() {
    cv::VideoCapture cam1;
    cam1.open(0);
    int w = cam1.get(cv::CAP_PROP_FRAME_WIDTH);
    int h = cam1.get(cv::CAP_PROP_FRAME_HEIGHT);
    float fps = cam1.get(cv::CAP_PROP_FPS);
    cv::VideoWriter writer1("appsrc ! video/x-raw, format=BGR ! queue ! videoconvert ! video/x-raw,format=BGRx ! nvvidconv ! nvv4l2h264enc ! h264parse ! rtph264pay pt=96 config-interval=1 ! udpsink host=127.0.0.1 port=5000", cv::CAP_GSTREAMER, fps, cv::Size(w, h), true);

 
    while (true) {
        // lock the frame so that no other process can modiy or read it while it is updating
        camera_lock.lock();

        // if there are no frames, exit out
        if (!cam1.read(frame1)) {
            std::cout << "Failed\n";
            break;
        }

        // make a deep copy of the captured frame and create a share pointer for it
        std::shared_ptr<cv::Mat> frame_ptr = std::make_shared<cv::Mat>(frame1.clone());

        // push the pointer into the 2 queues for CV and visual odometry
        cv_queue.push(frame_ptr);
        visual_queue.push(frame_ptr);

        // write the frame to one of the port on the jetson nano
        writer1.write(frame1);

        // release the lock
        camera_lock.unlock();

        // notify other process the frame update is completed
        condition.notify_all();

        // uncomment the below code for debugging purposes
        /*std::cout << "cv queue: " << cv_queue.size() << "\n";
        std::cout << "visual queue: " << visual_queue.size() << "\n";*/

        /*cv::imshow("output", frame1);

        cv::waitKey(1);*/
    }

    // close the camera and destroy all windows
    cam1.release();
}

// function to run the rtsp server on port to allow external device to access the camera feeds in real time
void rtsp_server() {
    // Initialize the gstreamer object
    gst_init(nullptr, nullptr);
    GstRTSPServer* server;
    GMainLoop* loop;
    GstRTSPMediaFactory* factory;
    GstRTSPMountPoints* mounts;

    // Create a new server
    server = gst_rtsp_server_new();
    // Create a loop that the server will run in
    loop = g_main_loop_new(NULL, false);
    factory = gst_rtsp_media_factory_new();
    gst_rtsp_media_factory_set_launch(factory, "( udpsrc port=5000 ! queue ! application/x-rtp,encoding-name=H264 ! rtpjitterbuffer latency=0 ! rtph264depay ! h264parse ! queue ! rtph264pay name=pay0 pt=96 )");
    mounts = gst_rtsp_server_get_mount_points(server);
    gst_rtsp_mount_points_add_factory(mounts, "/test", factory);

    factory = gst_rtsp_media_factory_new();
    gst_rtsp_media_factory_set_launch(factory, "( udpsrc port=5001 ! queue ! application/x-rtp,encoding-name=H264 ! rtpjitterbuffer ! rtph264depay ! h264parse ! queue ! rtph264pay name=pay0 pt=96 )");
    gst_rtsp_mount_points_add_factory(mounts, "/test1", factory);

    g_object_unref(mounts);

    gst_rtsp_server_attach(server, NULL);

    g_main_loop_run(loop);
}

void model_detection(std::string model_path, std::vector<std::string> classes) {
    // set up the model for inference
    detection_model model(model_path, classes);

    while (true) {
        /*std::cout << "visual\n";*/
        std::unique_lock<std::mutex> lk(cv_lock);
        
        // wait until there are frames within the cv queue
        condition.wait(lk, [] { return cv_queue.size() > 0; });
        
        // perform inference on the oldest frame
        model.detect(*cv_queue.front());
        // remove the frame after the inference 
        cv_queue.pop();
        std::cout << "\n";
    }
}

void visual_odometry() {
    // set up the orb slam2 object
    visual_odom SLAM("path to vocabulary", "path to camera ymal file");
    while (true) {
        std::unique_lock<std::mutex> lk(slam_lock);
        // wait until there are frames within the cv queue
        condition.wait(lk, [] { return visual_queue.size() > 0; });


        auto start = std::chrono::high_resolution_clock::now();

        // give the oldest frame from the queue to orb slam2 object
        SLAM.SLAM_matrix(*visual_queue.front());

        auto stop = std::chrono::high_resolution_clock::now();
        std::chrono::duration<double> duration = stop - start;
        std::cout << "FPS: " << 1.0 / duration.count() << "\n";

        // get the tuple that contains useful info such as rotational and transitional data of the camera
        // it will return a tuple where every value is -100 if map is not yet initialize
        std::tuple<float, float, float, float, float, float> info = SLAM.data();

        // print out the tuple
        std::cout << std::get<0>(info) << ", " << std::get<1>(info) << ", " << std::get<2>(info) << ", " << std::get<3>(info) << ", " << std::get<4>(info) << ", "
        << std::get<5>(info) << "\n";

        // pop the oldest frame frrom the queue
        visual_queue.pop();
    }
    // shut down orb slam2
    SLAM.shut_down();
}
#include "visual-odometry.h"

visual_odom::visual_odom(std::string vocab_dir, std::string camera_file_dir) {
    // initialize the ORB SLAM object
    SLAM = new ORB_SLAM2::System(vocab_dir, camera_file_dir, ORB_SLAM2::System::MONOCULAR, false);
	timestamp = 0;
}


void visual_odom::SLAM_matrix(cv::Mat frame) {
    // tcw is the matrix that represent transformation of world coordinate system to camera coordinate system
	tcw = SLAM->TrackMonocular(frame, timestamp);
	timestamp++;
}

std::tuple<float, float, float, float, float, float> visual_odom::data() {
    if (!tcw.empty()) {
        twc = tcw.inv();
        
        cv::Mat o(twc, cv::Rect(0, 0, 3, 3));
        
        Eigen::Matrix3f o1;
        cv::cv2eigen(o, o1);
        Eigen::Vector3f t = o1.eulerAngles(0, 1, 2) * (180.0 / M_PIl);

        return std::make_tuple(twc.at<float>(0, 3), twc.at<float>(1, 3), twc.at<float>(2, 3), t(0), t(1), t(2));
    }

    return std::make_tuple(-100, -100, -100, -100, -100, -100);
}

void visual_odom::shut_down() {
    SLAM->Shutdown();
}
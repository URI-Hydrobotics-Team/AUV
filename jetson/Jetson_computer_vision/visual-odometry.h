#pragma once
#include <System.h>
#include <opencv2/core/eigen.hpp>
#include <Eigen/Geometry> 
#include <Eigen/Dense>
#include <tuple>
#define _USE_MATH_DEFINES
#include <cmath>
# define M_PI           3.14159265358979323846  /* pi */


class visual_odom {
	Eigen::Matrix3f rotational_matrix;
	Eigen::Vector3f matrix_in_angle;
	ORB_SLAM2::System* SLAM;
	int timestamp;
	cv::Mat tcw;
	cv::Mat twc;

public:

	visual_odom(std::string vocab_dir, std::string camera_file_dir);

	void SLAM_matrix(cv::Mat frame);

	std::tuple<float, float, float, float, float, float> data();
	void shut_down();
};
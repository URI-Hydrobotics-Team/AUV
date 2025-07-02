#pragma once

#include <vector>
#include <opencv2/dnn.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>
// #include <opencv2/cudaarithm.hpp>
#include <iostream>
#include <string>



class detection_model {
	public:
		//Class constructor
		detection_model(std::string modelPath, std::vector<std::string> object_classes);
		//Pass the image into the model and return the output
		std::vector<cv::Mat> get_model_output(cv::Mat blob);
		// Compute the output data, including bounding boxes, objects, confidence score and others
		void detect(cv::Mat frame);
		//Function to get the object coordinates
		std::vector<cv::Rect2d> get_detection_coordinates();
		//Function to get the detected object names
		std::vector<std::string> get_object_name();
		//Function to get the confidence score of the detected objects
		std::vector<float> get_object_confidence();
		//Draw the bounding boxes and display names and confidence score of the model on detected objects
		cv::Mat draw_img(cv::Mat frame, std::vector<cv::Rect2d> coordinates = {});

	private:
		std::string modelPath;
		float center_x;
		float center_y;
		float x_scale;
		float y_scale;
		cv::dnn::Net model;
		std::vector<std::string> object_classes;
		std::vector<std::string> detected_object;
		std::vector<cv::Rect2d> bounding_box;
		std::vector<float> confidence;
		std::vector<int> indices;
};
#include <opencv2/opencv.hpp>
#include <opencv2/dnn.hpp>

cv::dnn::Net net = cv::dnn::readNetFromONNX("path/to/your/model.onnx");

// TODO: Write socket code to read commands from Pi.


// TODO: Listen to the Pi for deckbox heartbeat to send video stream. 
// Pi will ICMP ping to the deckbox to check if it is alive.
// If it is alive, send video stream to deckbox. 
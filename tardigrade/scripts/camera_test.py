#!/usr/bin/env python

import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
import cv2
import numpy as np

class CameraProcessor:
    def __init__(self):
        # Initialize the ROS node
        rospy.init_node('camera_processor', anonymous=True)

        # Create a CvBridge object
        self.bridge = CvBridge()

        # Subscribe to the camera feed topic
        self.image_sub = rospy.Subscriber('/tardigrade/camera/front/data/image_color', Image, self.callback)

    def callback(self, data):
        try:
            # Convert ROS image message to OpenCV image
            cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")

            # Process the frame
            processed_frame, red_filtered_frame, edges = self.process_frame(cv_image)

            # Display the results
            cv2.imshow('Original Frame', cv_image)
            cv2.imshow('Red Filtered Frame', red_filtered_frame)
            cv2.imshow('Edges', edges)
            cv2.imshow('Processed Frame with Lines', processed_frame)

            # Wait for a short period
            cv2.waitKey(1)

        except CvBridgeError as e:
            rospy.logerr(e)

    def process_frame(self, frame):
        # Convert the image to HSV color space
        hsv = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)

        # Define the range for red color in HSV
        lower_red1 = np.array([50, 0, 0])
        upper_red1 = np.array([150, 255, 255])

        # Create masks for red color
        mask = cv2.inRange(hsv, lower_red1, upper_red1)

        # Apply the mask to the original frame
        red_filtered_frame = cv2.bitwise_and(frame, frame, mask)

        # Convert the result to grayscale
        gray = cv2.cvtColor(red_filtered_frame, cv2.COLOR_BGR2GRAY)

        # Apply a Gaussian blur to the image
        blurred = cv2.GaussianBlur(gray, (5, 5), 0)

        # Detect edges using Canny edge detector
        edges = cv2.Canny(blurred, 50, 150)

        # Use Hough Line Transform to detect lines
        lines = cv2.HoughLines(edges, 1, np.pi / 180, 200)

        # Draw lines on the original frame
        if lines is not None:
            for rho, theta in lines[:, 0]:
                a = np.cos(theta)
                b = np.sin(theta)
                x0 = a * rho
                y0 = b * rho
                x1 = int(x0 + 1000 * (-b))
                y1 = int(y0 + 1000 * (a))
                x2 = int(x0 - 1000 * (-b))
                y2 = int(y0 - 1000 * (a))
                cv2.line(frame, (x1, y1), (x2, y2), (0, 255, 0), 2)

        # Draw a circle at the center of the image
        height, width = frame.shape[:2]
        center = (width // 2, height // 2)
        cv2.circle(frame, center, 10, (255, 0, 0), -1)

        return frame, red_filtered_frame, edges

if __name__ == '__main__':
    try:
        # Create a CameraProcessor instance
        camera_processor = CameraProcessor()

        # Keep the node running
        rospy.spin()
    except rospy.ROSInterruptException:
        pass

    # Close all OpenCV windows
    cv2.destroyAllWindows()

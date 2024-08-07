#!/usr/bin/env python

import rospy
import cv2
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError

def main():
    # Initialize the ROS node
    rospy.init_node('camera_publisher', anonymous=True)
    
    # Define the publisher for uncompressed images
    image_pub = rospy.Publisher('/tardigrade/camera/front/data/image_color', Image, queue_size=10)
    
    # Create a CvBridge object
    bridge = CvBridge()

    # Open the camera (0 is usually the default camera)
    cap = cv2.VideoCapture(0)
    
    if not cap.isOpened():
        rospy.logerr("Error: Camera could not be opened.")
        return

    # Set camera resolution (optional, adjust as needed)
    cap.set(cv2.CAP_PROP_FRAME_WIDTH, 640)
    cap.set(cv2.CAP_PROP_FRAME_HEIGHT, 480)
    
    rate = rospy.Rate(10)  # 10 Hz
    while not rospy.is_shutdown():
        # Capture frame-by-frame
        ret, frame = cap.read()
        
        if not ret:
            rospy.logerr("Error: Failed to capture image.")
            break
        
        try:
            # Convert OpenCV image to ROS image message
            ros_image = bridge.cv2_to_imgmsg(frame, encoding="bgr8")
            
            # Publish the image
            image_pub.publish(ros_image)
        
        except CvBridgeError as e:
            rospy.logerr(f"CvBridge Error: {e}")
        
        # Wait for a short period
        rate.sleep()
    
    # Release the camera and close all OpenCV windows
    cap.release()
    cv2.destroyAllWindows()

if __name__ == '__main__':
    main()

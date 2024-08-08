#!/usr/bin/env python

import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
import cv2
import numpy as np

class CameraAuto:
    def __init__(self):
        # Initialize the ROS node
        rospy.init_node('houghline_test')
        rate = rospy.Rate(5)

    def callback():
        
    
                

if __name__ == "__main__":
    camera = CameraAuto()

    rospy.Subscriber('/tardigrade/camera/front/data/image_color', Image, camera.callback)
    rospy.spin()


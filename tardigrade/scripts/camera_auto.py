#!/usr/bin/env python

import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
import cv2
import numpy as np

class CameraAuto:
    def __init__(self):
        # Initialize the ROS node
        rospy.init_node('camera_processor', anonymous=True)

        # Create a CvBridge object
        self.bridge = CvBridge()

        # Subscribe to the camera feed topic
        self.image_sub = rospy.Subscriber('/tardigrade/camera/front/data/image_color', Image, self.callback)


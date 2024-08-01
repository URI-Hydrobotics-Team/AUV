#!/usr/bin/env python

"""

"""

import time
import board
from Adafruit_BNO055 import BNO055
import rospy

class IMU:#
    def __init__(self):
        rospy.init_node('BNO055Controller')
        #publisher = rospy.Publisher('/')
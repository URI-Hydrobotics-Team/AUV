#!/usr/bin/env python

"""

"""

import time
import board
import adafruit_bno055import 
import rospy

class Echosounder:#
    def __init__(self):
        rospy.init_node('BNO055')
        #publisher = rospy.Publisher('/')
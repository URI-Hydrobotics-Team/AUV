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
        publisher = rospy.Publisher('/imu')

        i2c = board.I2C()  # uses board.SCL and board.SDA
        i2c = board.STEMMA_I2C()  # For using the built-in STEMMA QT connector on a microcontroller
        sensor = BNO055.BNO055_I2C(i2c)
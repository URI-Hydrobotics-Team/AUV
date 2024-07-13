#!/usr/bin/env python

"""

"""

from brping import Ping1D
import rospy

class Echosounder:
    def __init__(self, serial:str = '/dev/ttyUSB1', baud_rate:int = 115200, topic: str = '/echosounder/bottom'):
        publisher = rospy.Publisher('/')
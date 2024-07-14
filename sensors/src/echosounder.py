#!/usr/bin/env python

"""

"""

from brping import Ping1D
import rospy

class Echosounder:
    def __init__(self):
        rospy.init_node('EchosounderController')
        publisher = rospy.Publisher('/')
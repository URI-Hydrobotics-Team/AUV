#!/usr/bin/env python

"""

"""

from brping import Ping1D
import rospy

class Echosounder:
    def __init__(self):
        rospy.init_node('EchosounderController')
        #self.is_sim = rospy.get_param('~is_sim') may be adding this in the near future
        uart_channel = rospy.get_param('~uart_channel')
        baud_rate = rospy.get_param('~baudrate')
        mode = rospy.get_param('~mode') #Defines the running mode of the Ping1d, either distance or profile

        
            
            
        

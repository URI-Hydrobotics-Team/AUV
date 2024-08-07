#!/usr/bin/env python

"""

"""

from brping import Ping1D
from serial.tools import list_ports_linux
import rospy

class Ping1dEchosounder:
    def __init__(self):
        rospy.init_node('EchosounderController')
        #self.is_sim = rospy.get_param('~is_sim') may be adding this in the near future
        serial_number = rospy.get_param('~serial_number')
        baud_rate = rospy.get_param('~baudrate')
        node_name = rospy.get_param('~node_name')
        mode = rospy.get_param('~mode') #Defines the running mode of the Ping1d, either distance or profile

        baud_rate = 9600
        serial_number = "DP05HWQ9"
        

        usb_list = list_ports_linux.comports()

        for usb in usb_list:
            if usb.serial_number == serial_number:
                print('Found echosounder:', node_name, 'at port:', usb.device_path)
            else:
                print('Could not find echosounder with serial number:', serial_number)


if __name__ == "__main__":
    echosounder = Ping1dEchosounder()
        
            
            
        

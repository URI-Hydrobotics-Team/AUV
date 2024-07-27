#!/usr/bin/env python3

"""
ThrusterController's usage is exactly as it's name suggests, well kinda...
It's primary usage is for sending Serial UART messages over USB to the onboard Pico acting as a microcontroller.

These messages are first pulled from the respective autonomous motion nodes, which are translated into PWMs, these PWMs are then
translated into a string message, that is packaged as a byte string to be sent to the Pico where it we be unpackaged, split, and
translated into a float for the 6 T200 Thrusters.
"""

import rospy
from std_msgs.msg import Float64
import serial

class ThrusterController:
    def __init__(self):
        rospy.init_node('ThrusterController')
        self.is_sim = rospy.get_param('~is_sim')
        serial_port = rospy.get_param('~port')
        baud_rate = rospy.get_param('~baudrate')
        print(self.is_sim)
        print(serial_port)
        print(baud_rate)

        self.INITIALIZE_MICROSECS = 1500
        
        self.bow_port_heave = self.INITIALIZE_MICROSECS
        self.bow_starboard_heave = self.INITIALIZE_MICROSECS
        self.stern_heave = self.INITIALIZE_MICROSECS
        self.yaw = self.INITIALIZE_MICROSECS
        self.port_surge = self.INITIALIZE_MICROSECS
        self.starboard_surge = self.INITIALIZE_MICROSECS


        #This order is absolute, GLORY TO THE ABSOLUTE!!!
        self.thruster_order  = ['BPH', #Bow-Port-Heave
                                'BSH', #Bow-Starboard-Heave
                                'SH', #Stern-Heave
                                'Y', #Yaw
                                'PS', #Port-Surge
                                'SS' #Starboard-Surge
                                ]
        self.thruster_vals = [self.bow_port_heave, self.bow_starboard_heave, self.stern_heave, self.yaw, self.port_surge, self.starboard_surge]

        # Initialize serial connection
        if not self.is_sim:
            self.ser = serial.Serial(serial_port, baud_rate)
        
    def twist_to_pwm(self, twist_msg):
        #Twist messages and stonefish utilize a -1 -> 1 for speed control, in the case of stonefish these values are 
        #the approximate rotational velocity of the thruster, thankfully, we can approximate the RPMs back, then by using 
        #a 2nd degree best fit line, get a pretty good estimate of our PWM signal. 

        #We have 2 separate 2nd degree best fit lines as forward and backward thrust/RPMs don't necessarily match.
        twist_mag = twist_msg.data * 3000 #Ratio to our max RPM
        if twist_msg.data == 0.0:
            return 1500
        elif twist_msg.data > 0:
            #Forwards twist mag is positive
            return round(1515 + (0.0576 * twist_mag) + (0.0000179 * (twist_mag ** 2)))
        else:
            #Backwards twist_mag is negative
            return round(1483 + (0.0498 * twist_mag) - (0.0000206 * (twist_mag ** 2)))

    def bow_port_heave_callback(self, msg):
        self.bow_port_heave = self.twist_to_pwm(msg)
        self.update_thrusters()

    def bow_starboard_heave_callback(self, msg):
        self.bow_starboard_heave = self.twist_to_pwm(msg)
        self.update_thrusters()

    def stern_heave_callback(self, msg):
        self.stern_heave = self.twist_to_pwm(msg)
        self.update_thrusters()

    def yaw_callback(self, msg):
        self.yaw = self.twist_to_pwm(msg)
        self.update_thrusters()

    def port_surge_callback(self, msg):
        self.port_surge = self.twist_to_pwm(msg)
        self.update_thrusters()

    def starboard_surge_callback(self, msg):
        self.starboard_surge = self.twist_to_pwm(msg)
        self.update_thrusters()

    def initialize_thrusters(self):
        message = 'PWM,1500,1500,1500,1500,1500,1500\n'
        bytestring_command = bytes(message, 'ascii')
        if not self.is_sim:
            print('Writing:', bytestring_command)
            self.ser.write(bytestring_command)

    def update_thrusters(self):
        #Update our array.
        self.thruster_vals = [self.bow_port_heave, self.bow_starboard_heave, self.stern_heave, self.yaw, self.port_surge, self.starboard_surge]

        #Convert ints to strings
        message_vals = list(map(str, self.thruster_vals))

        #And append to the PWM tag.
        message = 'PWM,'
        message += ','.join(message_vals) 
        rospy.loginfo(message)
        message += '\n'
        bytestring_command = bytes(message, 'ascii')
        
        if not self.is_sim:
            print('Writing:', bytestring_command)
            self.ser.write(bytestring_command)


if __name__ == "__main__":
    thrustercontroller = ThrusterController()
    thrustercontroller.initialize_thrusters()

    rospy.Subscriber("/tardigrade/control/thruster/bow_port_heave", Float64, thrustercontroller.bow_port_heave_callback)
    rospy.Subscriber("/tardigrade/control/thruster/bow_starboard_heave", Float64, thrustercontroller.bow_starboard_heave_callback)
    rospy.Subscriber("/tardigrade/control/thruster/stern_heave", Float64, thrustercontroller.stern_heave_callback)
    rospy.Subscriber("/tardigrade/control/thruster/yaw", Float64, thrustercontroller.yaw_callback)
    rospy.Subscriber("/tardigrade/control/thruster/port_surge", Float64, thrustercontroller.port_surge_callback)
    rospy.Subscriber("/tardigrade/control/thruster/starboard_surge", Float64, thrustercontroller.starboard_surge_callback)

    rospy.spin()
#!/usr/bin/env python3
import rospy
from std_msgs.msg import Float64
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Joy

class DepthControl:
    def __init__(self):
        self.sub_cmd_vel = rospy.Publisher("/cmd_vel", Twist, queue_size = 1)
        
        t = Twist()
        
        while(True):
            directional = input('w = Up, s = Dive: ')
            
            if directional == 's':
                print('GO DOWN')
                t.linear.z = -1
                self.sub_cmd_vel.publish(t)
            elif directional == 'w':
                print('GO UP')
                t.linear.z = 1
                self.sub_cmd_vel.publish(t)
            elif direction == 'q':
                print('HOLD DEPTH')
                t.linear.z = 0
                setl.sub_cmd_vel.publish(t)
            else:
                t.linear.z = 0                

if __name__ == "__main__":
    rospy.init_node('depth_controller')
    l = DepthControl()
    rospy.spin()
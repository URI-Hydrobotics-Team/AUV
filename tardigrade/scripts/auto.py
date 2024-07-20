#! /usr/vin/env python

import rospy
from std_msgs.msg import Float64
from geometry_msgs.msg import Twist

def make_twist(lin_x, lin_y, lin_z, ang_x, ang_y, ang_z):
    twist = Twist()
    twist.linear.x = lin_x
    twist.linear.y = lin_y
    twist.linear.z = lin_z
    twist.angular.x = ang_x
    twist.angular.y = ang_y
    twist.angular.z = ang_z
    return twist

def auto():
    pub = rospy.Publisher('/cmd_vel', Twist, queue_size = 10)
    rospy.init_node('auto', anonymous = True)

    while not rospy.is_shutdown():
        forward = make_twist(0.5, 0.0, 0.0, 0.0, 0.0, 0.0)
        dive = make_twist(0.0, 0.0, -0.5, 0.0, 0.0, 0.0)
        pub.publish(forward)
        rospy.sleep(2)

        pub.publish(dive)
        rospy.sleep(2)

if __name__ == '__main__':
    auto()
    rospy.spin()


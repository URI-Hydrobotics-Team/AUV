#!/usr/bin/env python3

"""
Subscribes to the /cmd_vel topic (which is published to via the /teleop_pub (part of teleop_twist_keyboard)) and then publishes the thruster "power" to each thruster (/tardigrade/control/thruster/*)
"""
import rospy
from geometry_msgs.msg import Twist
from std_msgs.msg import Float64

class Move:
    def __init__(self) -> None:
        self.sub_cmd_vel = rospy.Subscriber("/cmd_vel", Twist, self.propel)
        
        self.pub_port_surge = rospy.Publisher("/tardigrade/control/thruster/port_surge", Float64, queue_size=1)
        self.pub_starboard_surge = rospy.Publisher("/tardigrade/control/thruster/starboard_surge", Float64, queue_size=1)
        self.pub_yaw = rospy.Publisher("/tardigrade/control/thruster/yaw", Float64, queue_size=1)
        self.pub_bow_port_heave = rospy.Publisher("/tardigrade/control/thruster/bow_port_heave", Float64, queue_size=1)
        self.pub_bow_starboard_heave = rospy.Publisher("/tardigrade/control/thruster/bow_starboard_heave", Float64, queue_size=1) 
        self.pub_stern_heave = rospy.Publisher("/tardigrade/control/thruster/stern_heave", Float64, queue_size=1)

    def propel(self, msg):
        lin_x = msg.linear.x #i = forward , "," = back, k = stop all inputs
        lin_y = msg.linear.y #j = left, l = right 
        lin_z = msg.linear.z #t = rise, b = dive
        ang_z = msg.angular.z #u = rotate left, o = rotate right
        ang_x = msg.angular.x #y = roll left, n = roll right
        ang_y = msg.angular.y #r = pitch down, v = pitch up.

        self.pub_bow_port_heave.publish(lin_z * 0.597526042)
        self.pub_bow_starboard_heave.publish(lin_z * 0.597526042)
        self.pub_stern_heave.publish(lin_z)

        self.pub_yaw.publish(-ang_z / 5)
        self.pub_port_surge.publish(lin_x)
        self.pub_starboard_surge.publish(lin_x)

if __name__ == "__main__":
    rospy.init_node("cmd_vel_to_thruster")
    Move()
    rospy.spin()
    
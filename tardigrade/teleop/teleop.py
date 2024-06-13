#!/usr/bin/env python3
import rospy
from std_msgs.msg import Float64
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Joy

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
        ang_z = msg.angular.z #u = rotate left, o = rotate right
        depth = msg.linear.z #t = rise, h = hold, b = dive
        #Hold does not work at this time.
        self.pub_bow_port_heave.publish(depth * 0.597526042)
        self.pub_bow_starboard_heave.publish(depth * 0.597526042)
        self.pub_stern_heave.publish(depth)

        self.pub_yaw.publish(-ang_z / 5)
        self.pub_port_surge.publish(lin_x)
        self.pub_starboard_surge.publish(lin_x)

if __name__ == "__main__":
    rospy.init_node("teleop_to_thruster_wamv")
    Move()
    rospy.spin()
import rospy
from std_msgs.msg import Float64
from geometry_msgs.msg import Twist
import time

# build the twist message using standard float64 messages
def build_twist_message(linear_x, linear_y, linear_z, angular_x, angular_y, angular_z):
    twist_msg = Twist()
    twist_msg.linear.x = linear_x
    twist_msg.linear.y = linear_y
    twist_msg.linear.z = linear_z
    twist_msg.angular.x = angular_x
    twist_msg.angular.y = angular_y
    twist_msg.angular.z = angular_z
    return twist_msg

# move the robot forward, stop for a sec, turn right, stop for a sec, then move forward, then stop
def move():
    pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)

    #move forward
    pub.Publish(build_twist_message(linear_x=0.5, linear_y=0, linear_z=0, angular_x=0, angular_y=0, angular_z=0))
    rospy.sleep(1)

    #turn
    pub.Publish(build_twist_message(linear_x=0, linear_y=0, linear_z=0, angular_x=0, angular_y=0, angular_z=0.5))
    rospy.sleep(1)

    #move forward
    pub.Publish(build_twist_message(linear_x=0.5, linear_y=0, linear_z=0, angular_x=0, angular_y=0, angular_z=0))
    rospy.sleep(1)






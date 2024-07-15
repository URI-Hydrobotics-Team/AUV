import rospy
from std_msgs.msg import Float64
from geometry_msgs.msg import Twist, Vector3

class DirtyAuto:
    def __init__(self):
        self.cmd_vel = rospy.Publisher('/cmd_vel', Twist, queue_size = 10)

    def send_message(self, lin_x, lin_y, lin_z, ang_x, ang_y, ang_z):
        twist = Twist()
        twist.linear.x = Float64(lin_x)
        twist.linear.y = Float64(lin_y)
        twist.linear.z = Float64(lin_z)
        self.cmd_vel.publish(twist)

if __name__ == '__main__':
    rospy.init_node("DirtyAuto")
    da = DirtyAuto()
    da.send_message(1.0, -1.0, 0.0, 0.0, 0.0, 0.0)
    rospy.spin()
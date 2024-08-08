import rospy
from std_msgs.msg import Float64
import time

pub_port_surge = rospy.Publisher("/tardigrade/control/thruster/port_surge", Float64, queue_size=1)
pub_starboard_surge = rospy.Publisher("/tardigrade/control/thruster/starboard_surge", Float64, queue_size=1)
pub_yaw = rospy.Publisher("/tardigrade/control/thruster/yaw", Float64, queue_size=1)
pub_bow_port_heave = rospy.Publisher("/tardigrade/control/thruster/bow_port_heave", Float64, queue_size=1)
pub_bow_starboard_heave = rospy.Publisher("/tardigrade/control/thruster/bow_starboard_heave", Float64, queue_size=1) 
pub_stern_heave = rospy.Publisher("/tardigrade/control/thruster/stern_heave", Float64, queue_size=1)

stop = ['stop',Float64(1500),Float64(1500),Float64(1500),Float64(1500),Float64(1500),Float64(1500)]
test_BPH = ['BPH',Float64(1600),Float64(1500),Float64(1500),Float64(1500),Float64(1500),Float64(1500)]
test_BSH = ['BSH',Float64(1500),Float64(1600),Float64(1500),Float64(1500),Float64(1500),Float64(1500)]
test_SH = ['SH',Float64(1500),Float64(1500),Float64(1600),Float64(1500),Float64(1500),Float64(1500)]
test_Y = ['Y',Float64(1500),Float64(1500),Float64(1500),Float64(1600),Float64(1500),Float64(1500)]
test_PS = ['PS',Float64(1500),Float64(1500),Float64(1500),Float64(1500),Float64(1600),Float64(1500)]
test_SS = ['SS',Float64(1500),Float64(1500),Float64(1500),Float64(1500),Float64(1500),Float64(1600)]


def TestThrusters():
    test_stack = [stop, test_BPH, stop, test_BSH, stop, test_SH, stop, test_Y, stop, test_PS, stop, test_SS, stop]

    for pwms in test_stack:
        print(pwms[0])
        pub_bow_port_heave.publish(pwms[1])
        pub_bow_starboard_heave.publish(pwms[2])
        pub_stern_heave.publish(pwms[3])
        pub_yaw.publish(pwms[4])
        pub_port_surge.publish(pwms[5])
        pub_starboard_surge.publish(pwms[6])
        time.sleep(2)
    
if __name__ == "__main__":
    rospy.init_node("ThrusterTest")
    print("Testing Thrusters")
    test_thrusters = TestThrusters()
    rospy.spin()
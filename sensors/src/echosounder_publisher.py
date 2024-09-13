import rospy
from sensor_msgs.msg import Range
from brping import Ping1D


def publish_echosounder_data():
    # Specification of the echosounder sensor is available here:
    # https://www.bluerobotics.com/store/sensors-echosounders-cameras/echosounder/ping-echosounder-r2-rp/
    name = rospy.get_param('name', 'front')
    usb_port = rospy.get_param('usb_port', '/dev/ttyUSB0')
    frequency = rospy.get_param('frequency', 10)
    frame = rospy.get_param('frame', "odom")
    fov = rospy.get_param('fov', 0.3)
    min_range = rospy.get_param("min_range", 0.5)
    max_range = rospy.get_param("max_range", 50.0)
    mode = rospy.get_param("mode", "distance")

    echosounder_driver = Ping1D()
    echosounder_driver.connect_serial(device_name=usb_port)
    rospy.init_node(str(name + "-driver"))
    pub_echosounder = rospy.Publisher(str(name+"-echosounder"), Range, queue_size=1)
    range_msg = Range()
    range_msg.header.frame_id = frame
    range_msg.radiation_type = 1
    range_msg.field_of_view = fov
    range_msg.min_range = min_range
    range_msg.max_range = max_range
    rate = rospy.Rate(frequency)

    while not rospy.is_shutdown():
        if mode == "distance":
            data = echosounder_driver.get_distance()
            confidence = data["confidence"]
            range_msg.range = data["distance"] / 1000.0
            range_msg.header.stamp = rospy.Time.now()
            pub_echosounder.publish(range_msg)
            rospy.loginfo( f"Distance: {range_msg.range: .4f}\tConfidence: {confidence: .0f}")
        elif mode == "profile":
            data = echosounder_driver.get_profile()
            rospy.loginfo(data)
            break
        else:
            rospy.loginfo("Invalid mode")
            break
        rate.sleep()


if __name__ == "__main__":
    try:
        publish_echosounder_data()
    except rospy.ROSInterruptException:
        pass
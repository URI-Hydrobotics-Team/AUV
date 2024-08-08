#!/usr/bin/env python

import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
import cv2

class ImageSubscriber:
    def __init__(self):
        # Initialize the ROS node
        rospy.init_node('image_subscriber', anonymous=True)

        # Create a CvBridge object
        self.bridge = CvBridge()

        # Subscribe to the image topic from the Master Pi
        self.image_sub = rospy.Subscriber('/tardigrade/camera/front/data/image_color', Image, self.callback)

    def callback(self, data):
        try:
            # Convert ROS Image message to OpenCV image
            cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")

            # Display the image using OpenCV
            cv2.imshow("Received Image", cv_image)
            cv2.waitKey(1)

        except CvBridgeError as e:
            rospy.logerr(f"CvBridge Error: {e}")

if __name__ == '__main__':
    try:
        image_subscriber = ImageSubscriber()
        rospy.spin()
        cv2.destroyAllWindows()
    except rospy.ROSInterruptException:
        pass

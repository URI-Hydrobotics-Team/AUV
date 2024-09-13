import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2

def publish_message():
    pub = rospy.Publisher('/tardigrade/camera/front/data/image_color', Image, queue_size=10)

    rospy.init_node('CamPublisher')

    rate = rospy.Rate(10)

    MJPG = cv2.VideoWriter_fourcc(*'MJPG')

    CAM_IDX = 0
    WIDTH = 1920
    HEIGHT = 1080

    # -- DEVICE SETUP --
    exploreHD = cv2.VideoCapture(CAM_IDX)

    # set to MJPEG mode, by default idx 0 is YUYV
    # MJPG needs to be set, before resolution. Pixel format is always selected first
    exploreHD.set(cv2.CAP_PROP_FOURCC, MJPG)

    exploreHD.set(cv2.CAP_PROP_FRAME_WIDTH, WIDTH)
    exploreHD.set(cv2.CAP_PROP_FRAME_HEIGHT, HEIGHT)

    # (Optional) Disable auto exposure
    exploreHD.set(cv2.CAP_PROP_AUTO_EXPOSURE, 1)
    exploreHD.set(cv2.CAP_PROP_EXPOSURE, 90)

    # Error Check
    if ((exploreHD == None) or (not exploreHD.isOpened())):
        print('\nError - could not open video device.\n')
        exit(0)

    br = CvBridge()

    while not rospy.is_shutdown():
        ret, frame = cap.read()

        if ret == True:
            rospy.loginfo('Publishing Video Frame')
            pub.publisher(br.cv2_to_imgmsg(frame))
        rate.sleep()

if __name__ == '__main__':
    try: 
        publish_message()
    except rospy.ROSInterruptException:
        pass
#!/usr/bin/env python

import rospy
from std_msgs.msg import String
from sensor_msgs.msg import Imu

def imucallback(msg):
    rospy.loginfo("I heard %s", msg.linear_acceleration.x)
    
def listener():

    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber("/os1_cloud_node/imu", Imu, imucallback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()
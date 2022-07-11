#!/usr/bin/env python 
from geometry_msgs.msg import Twist
import time
import rospy

def callback(data):
    rospy.loginfo("linear x = %d",data.linear.x)
def main():
	rospy.init_node('test_inputs', anonymous=True)
	rospy.Subscriber("rover/cmd_vel", Twist, callback)
	rospy.spin()

if __name__ == '__main__':
	try:
		main()
	except rospy.ROSInterruptException:
		pass

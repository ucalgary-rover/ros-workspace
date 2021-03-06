#!/usr/bin/env python 
from geometry_msgs.msg import Twist
import std_msgs
import time
import rospy

def callback(data):
	rospy.sleep(0.25)
	linear_v = round(data.linear.x,1)
	angular_v = -1*round(data.angular.z,1)
	a =[linear_v,angular_v]
	rospy.loginfo(a)
def main():
	rospy.init_node('test_inputs', anonymous=True)
	rospy.Subscriber("rover/cmd_vel", Twist, callback,queue_size=3)
	
	rospy.spin()
if __name__ == '__main__':
	try:
		main()
	except rospy.ROSInterruptException:
		pass

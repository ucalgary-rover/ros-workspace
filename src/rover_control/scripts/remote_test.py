#!/usr/bin/env python3
from geometry_msgs.msg import Twist
import time
import rospy
def callback(data):
	#acceleration
	#tank vs normal mode
    message_str = "I heard: [" + str(data.linear.x) + "]"
    rospy.loginfo(message_str)
def main():
	rospy.init_node('phid_drive', anonymous=True)
	print("Initing drive node")
	rospy.Subscriber("rover/cmd_vel",Twist,callback,queue_size = 3)
	rospy.spin()
if __name__ == '__main__':
	try:
		main()
	except rospy.ROSInterruptException:
		pass

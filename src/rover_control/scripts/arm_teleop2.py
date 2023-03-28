#!/usr/bin/env python
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Joy
import time
import rospy

def callback(data):
    twist = Twist()
    twist.linear.x = data.axes[0]
    rospy.Publisher(twist)
    
    
def main():
	rospy.init_node('test_inputs', anonymous=True)
	rospy.Subscriber("joy", Joy, callback,queue_size=None)
	rospy.spin()

if __name__ == '__main__':
	try:
		main()
	except rospy.ROSInterruptException:
		pass

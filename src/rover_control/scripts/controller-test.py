#!/usr/bin/env python
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Joy
import std_msgs
import time
import rospy

def callback(data):
    msg =""
    if(data.buttons[0] == 1):
        msg ="A was pressed"
    else:
        msg="A was not pressed"
    rospy.loginfo(msg)
def main():
	rospy.init_node('test_inputs', anonymous=False)
	rospy.Subscriber("joy",Joy, callback,queue_size=None)
	rospy.spin()
if __name__ == '__main__':
	try:
		main()
	except rospy.ROSInterruptException:
		pass

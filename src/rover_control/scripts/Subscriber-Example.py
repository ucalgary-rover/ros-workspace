#!/usr/bin/env python
import rospy
from std_msgs.msg import String
def callback(data):
    print("I heard: ")
    print(data)
def main():
    rospy.init_node('listener',anonymous=True)
    rospy.Subscriber('chatter',String,callback,queue_size=10)
    rospy.spin()
if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass

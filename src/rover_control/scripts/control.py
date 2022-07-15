#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Joy

# Author: Andrew Dai
# This ROS Node converts Joystick inputs from the joy node
# into commands for turtlesim

# Receives joystick messages (subscribed to Joy topic)
# then converts the joysick inputs into Twist commands
# axis 1 aka left stick vertical controls linear speed
# axis 0 aka left stick horizonal controls angular speed
def callback(data):
    twist = Twist()
    if(data.buttons[1] == 1):
        #b button = brake
        twist.linear.x = 0
        twist.angular.z = 0
    else:
        twist.linear.x = data.axes[1]
        twist.angular.z = data.axes[2]
    pub.publish(twist)
# Intializes everything
def start():
    global pub
    rospy.init_node('teleop_node')
    pub = rospy.Publisher('rover/cmd_vel', Twist)
    # subscribed to joystick inputs on topic "joy"
    rospy.Subscriber("joy", Joy, callback)
    # starts the node
    rospy.spin()

if __name__ == '__main__':
    start()
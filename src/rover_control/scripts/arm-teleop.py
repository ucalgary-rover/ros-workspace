#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Joy

# This ROS Node converts Joystick inputs from the joy node
# into commands for turtlesim

# Receives joystick messages (subscribed to Joy topic)
# then converts the joysick inputs into Twist commands
# axis 1 aka left stick vertical controls linear speed
# axis 0 aka left stick horizonal controls angular speed
def callback(controller):
    twist = Twist()
    if(controller.buttons[1] == 1):
        twist.linear.x = 0
        twist.angular.z = 0
    else:
        twist.linear.x = controller.axes[1]*5
        twist.angular.z = controller.axes[2]*5
    pub.publish(twist)
def start():
    global pub
    rospy.init_node('teleop_node')
    pub = rospy.Publisher('arm/cmd_vel', Twist)
    # subscribed to joystick inputs on topic "joy"
    rospy.Subscriber("joy", Joy, callback)
    # starts the node
    rospy.spin()

if __name__ == '__main__':
    start()
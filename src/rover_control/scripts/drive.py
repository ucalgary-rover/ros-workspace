#!/usr/bin/env python3
from Phidget22.Phidget import *
from Phidget22.Devices.DCMotor import *
from geometry_msgs.msg import Twist
import time
import rospy

leftFrontMotor = DCMotor()
leftBackMotor = DCMotor()
rightFrontMotor = DCMotor()
rightBackMotor = DCMotor()

def connect_motor(motor, name):
	status = False
	while(status == False):
		status = True
		try:
			motor.openWaitForAttachment(1000)
		except:
			status = False
			print("Failed to connect " + name + " Motor. Trying again...")
			time.sleep(1)

def init_motor(motor):
	motor.setCurrentLimit(10)
	motor.setTargetVelocity(0)
	motor.setAcceleration(50)
	motor.setFanMode(FanMode.FAN_MODE_AUTO)

def bound(min_val, max_val, value):
	return max(min_val, min(max_val, value))
def reconnect(failsafe):
	connect_motor(leftFrontMotor, "LF")
	connect_motor(leftBackMotor, "LC")
	connect_motor(rightFrontMotor, "RC")
	connect_motor(rightBackMotor, "RB")
	
	init_motor(leftFrontMotor)
	init_motor(leftBackMotor)
	init_motor(rightFrontMotor)
	init_motor(rightBackMotor)

	leftFrontMotor.enableFailsafe(failsafe)
	leftBackMotor.enableFailsafe(failsafe)
	rightFrontMotor.enableFailsafe(failsafe)
	rightBackMotor.enableFailsafe(failsafe)

def callback(data):
	#acceleration
	#tank vs normal mode
		try:
			if(data.angular.x == 0):
				left_targetVelocity = bound(-1,1,-data.linear.x)
				right_targetVelocity = bound(-1,1,data.linear.x)
			else:
				right_targetVelocity = bound(-1 ,1, data.linear.x)
				left_targetVelocity = bound(-1, 1, -data.linear.y)
			leftFrontMotor.setTargetVelocity(left_targetVelocity)
			leftBackMotor.setTargetVelocity(left_targetVelocity)
			rightFrontMotor.setTargetVelocity(right_targetVelocity)
			rightBackMotor.setTargetVelocity(right_targetVelocity)
			leftFrontMotor.resetFailsafe()
			leftBackMotor.resetFailsafe()
			rightFrontMotor.resetFailsafe()
			rightBackMotor.resetFailsafe()
		except PhidgetException:
			print("Connection lost!")
			reconnect(10000)

def main():
	rospy.init_node('phid_drive', anonymous=True)
	print("Initing drive node")
	rospy.Subscriber("rover/cmd_vel",Twist,callback,queue_size = 3)

	leftFrontMotor.setHubPort(3)
	leftBackMotor.setHubPort(2)
	rightFrontMotor.setHubPort(5)
	rightBackMotor.setHubPort(1)
	print("Motors ready")
	reconnect(10000)

	rospy.spin()

if __name__ == '__main__':
	try:
		main()
	except rospy.ROSInterruptException:
		leftFrontMotor.close()
		leftBackMotor.close()
		rightFrontMotor.close()
		rightBackMotor.close()
		pass

#!/usr/bin/env python3
from Phidget22.Phidget import *
from Phidget22.Devices.DCMotor import *
from geometry_msgs.msg import Twist
import time
import rospy

lFMotor = DCMotor()
lCMotor = DCMotor()
rCMotor = DCMotor()
rBMotor = DCMotor()

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
	connect_motor(lFMotor, "LF")
	connect_motor(lCMotor, "LC")
	connect_motor(rCMotor, "RC")
	connect_motor(rBMotor, "RB")
	
	init_motor(lFMotor)
	init_motor(lCMotor)
	init_motor(rCMotor)
	init_motor(rBMotor)

	lFMotor.enableFailsafe(failsafe)
	lCMotor.enableFailsafe(failsafe)
	rCMotor.enableFailsafe(failsafe)
	rBMotor.enableFailsafe(failsafe)

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
			lFMotor.setTargetVelocity(left_targetVelocity)
			lCMotor.setTargetVelocity(left_targetVelocity)
			rCMotor.setTargetVelocity(right_targetVelocity)
			rBMotor.setTargetVelocity(right_targetVelocity)
			lFMotor.resetFailsafe()
			lCMotor.resetFailsafe()
			rCMotor.resetFailsafe()
			rBMotor.resetFailsafe()
		except PhidgetException:
			print("Connection lost!")
			reconnect(10000)

def main():
	rospy.init_node('phid_drive', anonymous=True)
	print("Initing drive node")
	rospy.Subscriber("rover/cmd_vel",Twist,callback,queue_size = 3)

	lFMotor.setHubPort(3)
	lCMotor.setHubPort(2)
	rCMotor.setHubPort(5)
	rBMotor.setHubPort(1)
	print("Motors ready")
	reconnect(10000)

	rospy.spin()

if __name__ == '__main__':
	try:
		main()
	except rospy.ROSInterruptException:
		lFMotor.close()
		lCMotor.close()
		rCMotor.close()
		rBMotor.close()
		pass

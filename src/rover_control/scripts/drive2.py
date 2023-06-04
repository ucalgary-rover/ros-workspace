#!/usr/bin/env python3
from Phidget22.Phidget import *
from Phidget22.Devices.DCMotor import *
from rover_control.msg import Drive
import time
import rospy

lFMotor = DCMotor()
lCMotor = DCMotor()
rCMotor = DCMotor()
rBMotor = DCMotor()
connected = False

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
	motor.setAcceleration(80)
	motor.setFanMode(FanMode.FAN_MODE_AUTO)

def bound(min_val, max_val, value):
	return max(min_val, min(max_val, value))

def callback(data):
	try:
		left_targetVelocity = data.left_speed
		right_targetVelocity = data.right_speed
		lFMotor.setTargetVelocity(left_targetVelocity)
		lCMotor.setTargetVelocity(left_targetVelocity)
		rCMotor.setTargetVelocity(right_targetVelocity)
		rBMotor.setTargetVelocity(right_targetVelocity)
		lFMotor.resetFailsafe()
		lCMotor.resetFailsafe()
		rCMotor.resetFailsafe()
		rBMotor.resetFailsafe()
	except PhidgetException:
		connected = False
		return

def main():
	rospy.init_node('phid_drive', anonymous=True)
	print("Initing drive node")
	rospy.Subscriber("rover/cmd_vel", Drive, callback)

	lFMotor.setHubPort(3)
	lCMotor.setHubPort(2)
	rCMotor.setHubPort(5)
	rBMotor.setHubPort(1)
	if(not connected):
		connect_motor(lFMotor, "LF")
		connect_motor(lCMotor, "LC")
		connect_motor(rCMotor, "RC")
		connect_motor(rBMotor, "RB")
		
		init_motor(lFMotor)
		init_motor(lCMotor)
		init_motor(rCMotor)
		init_motor(rBMotor)

		lFMotor.enableFailsafe(10000)
		lCMotor.enableFailsafe(10000)
		rCMotor.enableFailsafe(10000)
		rBMotor.enableFailsafe(10000)
		print("Motors Ready")
		connected = True
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

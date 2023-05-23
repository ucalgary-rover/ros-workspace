#!/usr/bin/env python
from Phidget22.Phidget import *
from Phidget22.Devices.Stepper import *
from Phidget22.Devices.Encoder import *
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Joy
from std_msgs.msg import*
import math
import rospy
import time
#negative value = down / left
#positive valuye = up/ right
#Globals
shoulder_elbow_dist = 49 #units are cm
elbow_end_dist = 49 #also cm
baseEncoderRescale = 640/14379
shoulderEncoderRescale=32/459 #converts encoder counts to degrees of shoulder motor
elbowEncoderRescale = 16/153 #output degrees per encoder count
wristEncoderRescale = 20570/614061 #output degrees per encoder count
clawEncoderRescale = 20570/614061 #output degrees per encoder count

class Joint:
    #Joints consist of motor-encoder pairs
    def __init__(self,motor,encoder,velocity_limit,encoder_min,encoder_max,encoder_rescale):
        self.motor = motor
        self.encoder = encoder
        self.velocity_limit = velocity_limit
        self.encoder_min = encoder_min
        self.encoder_max = encoder_max
        self.encoder_rescale = encoder_rescale

    def setEncoderRescaleFactor(self,factor):
        self.encoder_rescale = factor

    def setPosition(self,angle):
        self.position = angle

    def getJointAngle(self):
        raw_value = self.encoder.getPosition()
        angle = raw_value * self.encoder_rescale
        return angle
        #can link these to publishers later

    def getPosition(self):
        raw_position = self.encoder.getPosition()
        return raw_position

    def isValidPosition(self,encoder_value):
        if(encoder_value >= self.encoder_min and encoder_value <= self.encoder_max):
            return True
        else:
            return False
def connect(motor,name):
    status = False
    while(status == False):
        status = True
        try:
            motor.openWaitForAttachment(7000)
        except:
            status = False
            print("Failed to connect " + name + " Motor. Trying again...")
            time.sleep(1)
    print("motor \"" + name + "\" is ready")

def init_motor(motor,name,port,current_limit,holding_current,gear_ratio,acceleration,control_mode):
    motor.setHubPort(port)
    motor.setControlMode(control_mode)
    motor.setCurrentLimit(current_limit)
    motor.setHoldingCurrentLimit(holding_current)
    motor.setRescaleFactor(1.8/16/(gear_ratio))
    motor.setAcceleration(acceleration)
    motor.setVelocityLimit(0)
    motor.setEngaged(True)
    motor.setDataInterval(motor.getMinDataInterval())
    print("Motor"+name+" is ready!")

def callback(data):
    basePub = rospy.Publisher("Base_Angle",Float32,queue_size=10)
    shoulderPub = rospy.Publisher("Shoulder_Angle",Float32,queue_size=10)
    elbowPub = rospy.Publisher("Elbow_Angle",Float32,queue_size=10)
    wristPub = rospy.Publisher("Wrist_Angle",Float32,queue_size=10)
    clawPub = rospy.Publisher("Claw_Angle",Float32,queue_size=10)

    baseAngle = baseEncoderRescale*baseE.getPosition()
    rotate_base_left = False
    rotate_base_right = False
    pos = baseM.getPosition()
    if(data.axes[0] > 0):
            baseM.setVelocityLimit(20*data.axes[0])
            baseM.setTargetPosition(pos + 1)
    elif(data.axes[0] < 0):
            baseM.setVelocityLimit(-20*data.axes[0])
            baseM.setTargetPosition(pos - 10)
    
    
def nextPositionIsValid(name,encoder,rotation,min_position,max_position):
    current_position = encoder.getPosition()
    if(rotation == 0):
        return True
    elif(current_position > min_position) and (current_position < max_position):
        #between the limits
        return True
    elif((rotation > 0) and (current_position() <= min_position)):
        #rotating away from minimum
        return True
    elif((rotation < 0) and (current_position() >=max_position)):
        #rotating away from maximum
        return True
    else:
        print("Position for " + name + "is out of range: move the other way")
        return False

def zeroPositionValue(motor):
    offset= -1* motor.getPosition()
    motor.addPositionOffset(offset)

def initialize_arm():
    connect(baseM,"Base")
    init_motor(baseM,"Base_Motor",0,2.8,1,76+(49/64),50,StepperControlMode.CONTROL_MODE_STEP)
    init_encoder(baseE,"Base_Encoder",0,0)
   
    print("DONE")

def init_encoder(encoder,name,port,position):
    status=False
    while(status==False):
        status = True
        try:
            encoder.openWaitForAttachment(7000)
        except:
            status = False 
            print("Encoder " + name + " not attached")
            time.sleep(1)
    print("Encoder " + name + " is ready.")
    encoder.setHubPort(port)
    encoder.setPosition(position)
#___________________#
baseM = Stepper()
baseE = Encoder()
baseM.setHubPort(0)
BASE = Joint(baseM,baseE,30,-2071,2071,baseEncoderRescale)
elbow_multiplier = 24/50 # gear ratio of the elbow gear to the joint gear
shoulder_multiplier = 16/50 #gear ratio of the shoulder gear to the joint gear

def main():
    global baseEncoderRescale
##Can't proceed until I know how motors will be calibrated!
    initialize_arm()
    #I only want setup code to run once, how can I make sure of that?
    rospy.init_node("Arm_Control",anonymous=True)
    rospy.Subscriber("joy",Joy,callback)
    rospy.spin()

if __name__ == "__main__":
	main()

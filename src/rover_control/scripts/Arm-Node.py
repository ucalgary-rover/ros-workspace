#!/usr/bin/env python

from Phidget22.Phidget import *
from Phidget22.Devices.Stepper import *
from Phidget22.Devices.Encoder import *
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Joy
import math
import rospy
import time

#Globals
shoulder_elbow_dist = 49 #units are cm
elbow_end_dist = 49 #also cm
baseEncoderRescale = 640/14379
shoulderEncoderRescale=32/459 #converts encoder counts to degrees of shoulder motor
elbowEncoderRescale = 16/153 #output degrees per encoder count
wristEncoderRescale = 20570/614061 #output degrees per encoder count
global init_arm
init_arm = False
class Joint:
    #Joints consist of motor-encoder pairs
    def __init__(self,motor,encoder,velocity_limit,encoder_min,encoder_max):
        self.motor = motor
        self.encoder = encoder
        self.velocity_limit = velocity_limit
        self.encoder_min = encoder_min
        self.encoder_max = encoder_max
        self.encoder_rescale = 1

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
    if(data.buttons[4] == 1 or data.buttons[6] ==1):
        if(baseM.getIsMoving() == 0):
            baseM.setVelocityLimit(-30)
            return
    elif(data.buttons[5] == 1 or data.buttons[8] ==1):
      if(baseM.getIsMoving() == 0):
            baseM.setVelocityLimit(30)
    else:
        baseM.setVelocityLimit(0)

    shoulder_movement = data.axes[1] #for sony controller
    elbow_movement = data.axes[4]
    wrist_movement = data.axes[6]
    claw_movement = data.axes[7]

    shoulderM.setVelocityLimit(-25/2*shoulder_movement)
    elbowM.setVelocityLimit(-50/2*elbow_movement)
    if(wristE.getPosition() < -5374):
        if(wrist_movement*-1 > 0):
            wristM.setVelocityLimit(-50/2*wrist_movement)
    elif(wristE.getPosition() > 5374):
        if(wrist_movement*-1 < 0):
            wristM.setVelocityLimit(-50/2*wrist_movement)
    else:
        wristM.setVelocityLimit(-50/2*wrist_movement)
    
    clawM.setVelocityLimit(-50/2*claw_movement)



    #if(not manual_override and (not CLAW.isValidPosition(claw_position) and claw_movement < 0 and claw_position < 0)):
        #Trying to move motor beyond minimum range
        #print("Range limit for  has been reached!")
    #elif(not manual_override and (not CLAW.isValidPosition(claw_position) and claw_movement > 0 and claw_position > 0)):
        #Trying to move motor beyond maximum range
        #print("Range limit for base has been reached!")
    #else:
        #CLAW.motor.setVelocityLimit(CLAW.velocity_limit*claw_movement)
    


    
    #when left stick is pressed, increase x, and ignore y
    # this is the part that needs work
    

def initialize_arm():
    connect(baseM,"Base")
    connect(shoulderM, "Shoulder")
    connect(elbowM,"Elbow")
    connect(wristM,"Wrist")
    connect(clawM,"Claw")

    init_motor(baseM,"Base_Motor",0,2.8,1,76+(49/64),50,StepperControlMode.CONTROL_MODE_RUN)
    init_motor(shoulderM,"Shoulder_Motor",1,2.8,2.8,15.3,50,StepperControlMode.CONTROL_MODE_RUN)
    init_motor(elbowM,"Elbow_Motor",2,2.8,1,15.3,50,StepperControlMode.CONTROL_MODE_RUN)
    init_motor(wristM,"Wrist_Motor",3,1.7,0.67,99+(1044/2057),50,StepperControlMode.CONTROL_MODE_RUN)
    init_motor(clawM,"Claw_Motor",4,1,0.67*1,99+(1044/2057),50,StepperControlMode.CONTROL_MODE_RUN)
    
    #init_encoder(BASE.encoder,"Base Encoder",0,0) #default to 0
    init_encoder(baseE,"Base_Encoder",0,0)
    init_encoder(shoulderE,"Shoulder_Encoder",1,1291) #90 deg
    init_encoder(elbowE,"Elbow Encoder",2,-860) # -90 deg (approx)
    init_encoder(wristE,"Wrist_Encoder",3,0) #doesn't matter
    init_encoder(clawE,"Claw_Encoder",4,0) ##doesn't matter

    print("DONE")
    init_arm = True

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
    encoder.setEnabled(True)
    encoder.setPosition(position)
#___________________#
baseM = Stepper()
shoulderM = Stepper()
elbowM = Stepper()
wristM = Stepper()
clawM = Stepper()

baseE = Encoder()
shoulderE = Encoder()
elbowE = Encoder()
wristE = Encoder()
clawE = Encoder()

baseM.setHubPort(0)
shoulderM.setHubPort(1)
elbowM.setHubPort(2)
wristM.setHubPort(3)
clawM.setHubPort(4)

BASE = Joint(baseM,baseE,30,-2071,2071)
SHOULDER = Joint(shoulderM,shoulderE,50,0,1291)
ELBOW = Joint(elbowM,elbowE,50,-860,860)
WRIST = Joint(wristM,wristE,50,-5374,5374)
CLAW = Joint(clawM,clawE,20,-5374,5374)

elbow_multiplier = 24/50 # gear ratio of the elbow gear to the joint gear
shoulder_multiplier = 16/50 #gear ratio of the shoulder gear to the joint gear

def main():
##Can't proceed until I know how motors will be calibrated!
    if(init_arm is False):
        initialize_arm()
    #I only want setup code to run once, how can I make sure of that?
    rospy.init_node("Arm_Control",anonymous=True)
    rospy.Subscriber("joy",Joy,callback,queue_size=5)
    rospy.spin()

if __name__ == "__main__":
	main()

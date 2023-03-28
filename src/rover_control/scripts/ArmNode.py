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
    zeroPositionValue(baseM)
    if(data.buttons[4] == 1 or data.buttons[6] ==1):
        if(nextPositionIsValid("base",baseE,1,-4045,4045) and baseM.getIsMoving() == 0):
            baseM.setTargetVelocity(30)
            baseM.setTargetPosition(1)
        else:
            pass
    elif(data.buttons[5] == 1 or data.buttons[7] ==1):
        if(nextPositionIsValid("base",baseE,-1,-4045,4045) and baseM.getIsMoving() == 0):
            baseM.setTargetPosition(-1)
        else:
            pass
    else:
        baseM.setTargetVelocity(0)
  
    shoulder_movement = data.axes[1]
    elbow_movement = data.axes[3]
    wrist_movement = data.axes[4]
    claw_movement = data.axes[5]

    shoulderM.setVelocityLimit(-25*shoulder_movement)
    elbowM.setVelocityLimit(-50*elbow_movement)
    wristM.setVelocityLimit(-50*wrist_movement)
    clawM.setVelocityLimit(-50*claw_movement)
    
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
    connect(shoulderM,"Shoulder")
    connect(elbowM,"Elbow")
    connect(wristM,"Wrist")
    connect(clawM,"Claw")

    init_motor(baseM,"Base_Motor",0,2.8,1,76+(49/64),50,StepperControlMode.CONTROL_MODE_STEP)
    init_motor(shoulderM,"Shoulder_Motor",1,2.8,2.8,15.3,50,StepperControlMode.CONTROL_MODE_STEP)
    init_motor(elbowM,"Elbow_Motor",2,2.8,1,15.3,50,StepperControlMode.CONTROL_MODE_STEP)
    init_motor(wristM,"Wrist_Motor",3,1.7,0.67,99+(1044/2057),50,StepperControlMode.CONTROL_MODE_RUN)
    init_motor(clawM,"Claw_Motor",4,1,0.67*1,99+(1044/2057),50,StepperControlMode.CONTROL_MODE_RUN)
    
    #init_encoder(BASE.encoder,"Base Encoder",0,0) #default to 0
    init_encoder(baseE,"Base_Encoder",0,0) #0 deg.
    init_encoder(shoulderE,"Shoulder_Encoder",1,1291) #90 deg
    init_encoder(elbowE,"Elbow Encoder",2,-860) # -90 deg (approx)
    init_encoder(wristE,"Wrist_Encoder",3,0) #doesn't matter
    init_encoder(clawE,"Claw_Encoder",5,0) ##doesn't matter

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

BASE = Joint(baseM,baseE,30,-2071,2071,baseEncoderRescale)
SHOULDER = Joint(shoulderM,shoulderE,50,0,1291,shoulderEncoderRescale)
ELBOW = Joint(elbowM,elbowE,50,-860,860,elbowEncoderRescale)
WRIST = Joint(wristM,wristE,50,-5374,5374,wristEncoderRescale)
CLAW = Joint(clawM,clawE,20,-5374,5374,clawEncoderRescale)

elbow_multiplier = 24/50 # gear ratio of the elbow gear to the joint gear
shoulder_multiplier = 16/50 #gear ratio of the shoulder gear to the joint gear

def main():
##Can't proceed until I know how motors will be calibrated!
    initialize_arm()
    #I only want setup code to run once, how can I make sure of that?
    rospy.init_node("Arm_Control",anonymous=True)
    rospy.Subscriber("joy/arm",Joy,callback)
    rospy.spin()

if __name__ == "__main__":
	main()

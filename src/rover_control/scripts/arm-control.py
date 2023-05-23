from Phidget22.Phidget import *
from Phidget22.PhidgetException import *
from Phidget22.Devices.Log import *
from Phidget22.LogLevel import *
from Phidget22.Devices.Stepper import *
from Phidget22.Devices.Encoder import *
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Joy
import time
import rospy

base_motor = Stepper()
shoulder_motor = Stepper()
elbow_motor = Stepper()
wrist_motor = Stepper()
claw_motor = Stepper()

base_encoder = Encoder()
shoulder_encoder = Encoder()
elbow_encoder = Encoder()
wrist_encoder = Encoder()
claw_encoder = Encoder


def init_motor(
def callback(data):
    pass
def main():
    pass
if __name__ == "__main__":
    main()
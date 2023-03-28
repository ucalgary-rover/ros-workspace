#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from sensor_msgs.msg import NavSatFix

from Phidget22.Phidget import *
from Phidget22.Devices.LCD import *
import time

def gps_callback(data, args):
    coords = str(round(data.latitude, 7)) + ", " + str(round(data.longitude, 7))
    args.writeText(LCDFont.FONT_5x8, 0, 0, "GPS Coords:")
    args.writeText(LCDFont.FONT_5x8, 0, 10, coords)
    args.flush()

def string_callback(data, args):
    args.writeText(LCDFont.FONT_5x8, 0, 20, "Mode:")
    args.writeText(LCDFont.FONT_5x8, 0, 30, '{0: <50}'.format(data.data))
    args.flush()

def main():
    rospy.init_node('lcd_display', anonymous=True)

    lcd0 = LCD()

    lcd0.openWaitForAttachment(5000)

    lcd0.setBacklight(0.5)

    lcd0.writeText(LCDFont.FONT_5x8, 0, 0, "Starting...")
    lcd0.flush()

    rospy.Subscriber("gps_ublox/fix", NavSatFix, gps_callback, (lcd0))
    rospy.Subscriber("rover/mode", String, string_callback, (lcd0))

    rospy.spin()

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass
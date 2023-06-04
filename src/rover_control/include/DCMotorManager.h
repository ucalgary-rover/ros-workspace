#include <phidget22.h>
#include <ros/ros.h>
#include <rover_control/Drive.h>
#include <DCMotor.h>
#include <cstdlib>
#include <exception>
#include <functional>
#include <boost/function.hpp>
#ifndef DCMOTORMANAGER_H
#define DCMOTORMANAGER_H
//TO DO:
//Convert DCMotorManager & DCMotor class to pimpl
//use function pointers
class DCMotorManager{
    private:
    /*
    Singleton is too hard to implement. For all intents and purposes, 
    nobody on the SSRT will purposely implement two managers
    In fact, having a separate manager for different sets of DCMotors would be beneficial
    */
        std::vector<DCMotor> motors;
        ros::NodeHandle nodehandle;
        ros::Subscriber subscriber;
        
    public:
        DCMotorManager();
   
        void DCMotor_Reconnect();
        void callback(rover_control::DriveConstPtr& driveMsg);
        ~DCMotorManager();
};
#endif
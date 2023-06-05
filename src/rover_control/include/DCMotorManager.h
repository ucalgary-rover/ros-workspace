#include <rover_control/Drive.h>
#include <ros/ros.h>
#include <DCMotor.h>
#include <cstdlib>
#include <exception>
#include <functional>
#include <boost/function.hpp>
#ifndef DCMOTORMANAGER_H
#define DCMOTORMANAGER_H
/// @brief A manager class to control the movements of a group of related DC Motors
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
        std::string name;
        DCMotorManager();
        void DCMotor_Reconnect();
        void callback(rover_control::DriveConstPtr& driveMsg);
        ~DCMotorManager();
};
#endif
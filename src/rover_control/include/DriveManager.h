#include <rover_control/Drive.h>
#include <ros/ros.h>
#include <DCMotor.h>
#include <boost/function.hpp>
#include <boost/bind.hpp>
#include <cstdlib>
#include <exception>
#include <functional>
#include <chrono>
#include <string>
#include <thread>
#include <memory>
#ifndef DRIVEMANAGER_H
#define DRIVEMANAGER_H
/// @brief A manager class to control the movements of a group of related DC Motorss
class DriveManager{
    private:
    /*
    Singleton is too hard to implement. For all intents and purposes, 
    nobody on the SSRT will purposely implement two managers
    In fact, having a separate manager for different sets of DCMotors would be beneficial
    */
        std::vector<DCMotor> motors;
        ros::NodeHandle nodehandle;
        ros::Subscriber subscriber;
        int acceleration;
    public:
        DriveManager();
        /// @brief 
        /// @tparam F implements operator() (must be a callable object - a function)
        /// @param device a reference to an existing DCMotor object to register to the manager
        /// @param initializer the function to invoke to initialize the motor
        /// @param reconnect the maximum wait time between connection attempts
        void register_motor(DCMotor& device, bool reconnect = true);
        DCMotor& create_motor(const std::string& device_name, int device_port, double acceleration, uint32_t connect_timeout_ms);
        void enable_all_failsafe(const uint32_t timeout_ms = 10000);
        void DCMotor_Reconnect();
        void callback(rover_control::DriveConstPtr& driveMsg);
        ~DriveManager();
};
#endif
#include <rover_control/Drive.h>
#include <ros/ros.h>
#include <motors/DCMotor.h>
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

/// @brief A manager class to control the movements of a group of related DC Motors
class DriveManager{
    private:
        std::vector<Rover::Motors::DCMotor> motors;
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
        void register_motor(Rover::Motors::DCMotor& device, bool reconnect = true);
        Rover::Motors::DCMotor& create_motor(const std::string& device_name, int device_port, double acceleration, uint32_t connect_timeout_ms);
        void enable_all_failsafe(const uint32_t timeout_ms = 10000);
        void DCMotor_Reconnect();
        void callback(rover_control::DriveConstPtr& driveMsg);
        ~DriveManager();
};
#endif
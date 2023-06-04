#include <DCMotorException.h>
#include <iomanip>
#include <phidget22.h>
#include <stdexcept>
#include <ros/ros.h>
#ifndef DCMOTOR_H
#define DCMOTOR_H
/// @brief Represents a DC Motor object on the rover.
/// Wraps the Phidget22 C library 
class DCMotor{
    /// @brief An enum representing 
    /// the physical location of the DC motor on the rover
    public:
        enum MountPoint{
            LEFT_FRONT = 0, //auto-numbering
            LEFT_MIDDLE,
            LEFT_BACK,
            RIGHT_FRONT,
            RIGHT_MIDDLE,
            RIGHT_BACK
        };
    private:
        PhidgetDCMotorHandle channel; 
        const MountPoint mountPoint;
        
    public:
        DCMotor() = delete;
        DCMotor(const MountPoint& mount);
        std::string name() const noexcept;
        PhidgetDCMotorHandle& PhidgetChannel() noexcept;
        void initialize(double acceleration = 50, unsigned int timeout_ms=10000);
        void checkForException(const PhidgetReturnCode& phidgetCode);
        void createException(DCMotorException& ex, const PhidgetReturnCode& phidgetCode)const noexcept;
        void enableFailsafe(const uint32_t timeout_ms = 10000);
        void resetFailsafe();
        void setTargetSpeed(double speed);
        /*
        Methods to implement:
        set/get brake strength
        set target velocity


        */

        
};
#endif

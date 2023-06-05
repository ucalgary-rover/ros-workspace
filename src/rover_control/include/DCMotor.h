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
    private:
        PhidgetDCMotorHandle channel; 
        std::string deviceName;
        int port;

        void gracefulShutdown();
        void forceShutdown();
    
    public:
        /// @brief Constructs a DCMotor object. 
        /// connect() must be invoked by must be initialized before using
        /// @param mount the mount location of the motor
        DCMotor(const std::string& name, int port);

        /// @brief Gets the name assigned to the DCMotor, as determined by its mount position
        /// @return the name of the DCMotor as an std::string
        std::string name() const noexcept;
        /// @brief Gets the internal communications channel that links the code to the device.
        /// This returns a reference to the channel 
        /// @return 
        PhidgetDCMotorHandle& PhidgetChannel() noexcept;
        void initialize();
        void connect(double acceleration = 50, uint32_t timeout_ms=10000);
        void throwException(PhidgetReturnCode& phidgetCode);
        void createException(DCMotorException& ex, const PhidgetReturnCode& phidgetCode)const noexcept;
        void enableFailsafe(const uint32_t timeout_ms = 10000);
        void resetFailsafe();
        void setTargetSpeed(double speed);
        void reconnect(const uint32_t timeout_ms = 10000);
        bool ok() noexcept;
        ~DCMotor();
        /*
        Methods to implement:
        set/get brake strength
        set target velocity


        */

        
};
#endif

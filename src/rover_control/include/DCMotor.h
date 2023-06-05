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
    /// the physical location of the DC motor on the rover
    private:
        PhidgetDCMotorHandle channel; 
        std::string deviceName;
        int port;
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
        /// @return a reference to the internal PhidgetHandle
        PhidgetDCMotorHandle& PhidgetChannel() noexcept;

        /// @brief creates a communication channel and tries to attach the motor. This also assigns it to a VINT hub port.
        /// This method must be invoked before connect is called. It's here so the constructor never throws exceptions.
        /// @throws DCMotorException if initialization fails for any reason.
        void initialize();

        /// @brief opens the channel and tries to initialize other paramters of the motors. 
        /// Motors will always be initialized to a velocity of 0.
        /// @param acceleration the acceleration of the motor, between 0 and 100.
        /// @param timeout_ms the maximum duration to wait for the attachment of the device.
        /// Setting this to 0 will cause it to wait indefinitely.
        void connect(double acceleration = 50, uint32_t timeout_ms=10000);
        void throwException(PhidgetReturnCode& phidgetCode);
        void createException(DCMotorException& ex, const PhidgetReturnCode& phidgetCode)const noexcept;

        /// @brief Enables the failsafe timer on the motor. If the failsafe is not reset within
        /// the timer, the channel will close.
        /// @param timeout_ms the amount of time in which to wait before triggering the failsafe, in milliseconds
        void enableFailsafe(const uint32_t timeout_ms = 10000);

        /// @brief resets the failsafe timer. 
        void resetFailsafe();
        
        /// @brief sets the target braking strength of the motor. 
        /// @param percent the percent of the maximum braking strength to apply
        void setTargetBrakingStrength(double percent);
        
        /// @brief Sets the target velocity of the motor 
        /// @param speed the percentage of the maximum rotation speed to apply
        void setTargetSpeed(double speed);

        /// @brief checks if the motor is alive. Returns true if the motor is connected with the program.
        bool ok() noexcept;
        /// @brief Attempts a graceful shutdown by closing the communication channel with the device. 
        /// This action is not permanent and the channel can be reopened.
        void shutdown();

        /// @brief Forcefully shuts down the motor. This method will never throw an exception. 
        void hard_shutdown() noexcept;

        ~DCMotor();
};
#endif

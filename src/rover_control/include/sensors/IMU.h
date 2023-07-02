#include <ros/ros.h>
#include <rover_control/Spatial.h>
#include <phidget22.h>
#include <cstdlib>
#include <exceptions/RuntimeException.h>
#include <exceptions/PhidgetException.h>
#ifndef IMU_H
#define IMU_H
// TODO: convert phidget-using classes to inherit common base type
namespace Rover
{
    namespace Sensors
    {
        class IMU
        {
            private:
                bool initialized;
                std::string deviceName;
                PhidgetSpatialHandle channel;
            public:
                struct EulerAngles
                {
                    double roll;
                    double pitch;
                    double yaw;
                    EulerAngles(double roll, double pitch, double yaw):roll(roll), pitch(pitch), yaw(yaw){}
                }typedef Data;
                IMU();
                IMU(const std::string& deviceName);
                void initialize();
                void connect(uint32_t timeout_ms);
                std::string name() const noexcept;
                void setName(const std::string& newName);
                EulerAngles getEulerAngles();
                ~IMU();
        }typedef Spatial;
    }
}
#endif
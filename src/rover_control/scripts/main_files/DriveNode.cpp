#include <phidget22.h>
#include <ros/ros.h>
#include <rover_control/Drive.h>
#include <controllers/DriveManager.h>
#include <motors/DCMotor.h>
#include <cstdlib>
#include <algorithm>
#include <string>
using namespace ros;
using namespace std;
using namespace Rover;
using namespace Motors;
/// @brief A simple file intended to demonstrate and test the capabilities of the rover with C++ using Phidgets.
/// It is not a permanent solution, and may be removed in later builds
std::vector<Rover::Motors::DCMotor> motors;
void connect(const std::string& name, const int port, const DCMotorLocation& location){
     do{
        try{ 
            motors.emplace_back("motor",port,location);
            motors.back().initialize();
            motors.back().connect();
            break;
        }
        catch(Rover::Exceptions::DCMotorException& ex){
            std::string err(ex.what());
            ROS_ERROR("%s",err.c_str());
            motors.pop_back();
        }
        catch(...){
            ROS_ERROR("Failed to initialize device");
            motors.pop_back();
        }
        std::this_thread::sleep_for(std::chrono::milliseconds(2500));
    }while(1);
    ROS_INFO("Successfully added motor \"%s\" on port %d",motors.back().name().c_str(),port);
}
void callback(const rover_control::DriveConstPtr& driveMsg){
    ROS_INFO("left: %f | right: %f", driveMsg->left_speed, driveMsg->right_speed);
    ROS_INFO("Setting speed to: %f",driveMsg->left_speed);
    for(auto& motor : motors){
        try{
            motor.setTargetSpeed(driveMsg->left_speed);
        }catch(Rover::Exceptions::DCMotorException& ex){
            connect(motor.name(),motor.device_port(),motor.motor_location());
        }
    }
}
int main(int argc, char** argv){
    ros::init(argc,argv,"drive_node");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe("/drive_speed",10,&callback);
    int active_ports[] = {1,2,3,5};
    /*
    for(int port : active_ports)
    {
        reconnect(port);
    }
    */
    ros::spin();
    return 0;
}
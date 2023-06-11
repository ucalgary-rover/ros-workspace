#include <phidget22.h>
#include <ros/ros.h>
#include <rover_control/Drive.h>
#include <DriveManager.h>
#include <DCMotor.h>
#include <cstdlib>
#include <algorithm>
#include <string>
using namespace ros;
using namespace std;
//TODO: Move classes to separate files
//THIS PROJECT IS GETTING TOO COMPLICATED
//Need to go a simpler route.
std::vector<DCMotor> motors;
void reconnect(){
     do{
        try{ 
            motors.emplace_back("motor",1);
            motors.back().initialize();
            motors.back().connect();
            break;
        }
        catch(DCMotorException& ex){
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
    ROS_INFO("Successfully added motor \"%s\" on port %d",motors.back().name().c_str(),0);
}
void callback(const rover_control::DriveConstPtr& driveMsg){
    try{
        ROS_INFO("Setting speed to: %f",driveMsg->left_speed);
        motors.back().setTargetSpeed(driveMsg->left_speed);
    }catch(DCMotorException& ex){
        reconnect();
    }
}
int main(int argc, char** argv){
    ros::init(argc,argv,"drive_node");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe("drive_speed",10,&callback);
    reconnect();
    ros::spin();
    return 0;
}
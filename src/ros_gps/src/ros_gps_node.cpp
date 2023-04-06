#include "ros/ros.h"
#include "nav_msgs/Odometry.h"
#include "sensor_msgs/NavSatFix.h"
#include <iostream>
#include <cstdlib>
#include <fstream>
using namespace std;
void gps_callback(const sensor_msgs::NavSatFix::ConstPtr& msg){
    double lat =  msg->latitude;
    double lon = msg->longitude;
    ROS_INFO("lat: %f, long: %f",lat,lon);
}
int main(int argc, char* argv[]){
    ros::init(argc,argv,"rover_gps_log");
    ros::NodeHandle node_handle;
    ros::Subscriber gps_sub = node_handle.subscribe("/ublox/fix",255,gps_callback);
    ros::spin();
}

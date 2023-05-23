#include "ros/ros.h"
#include "std_msgs/String.h"
#include <cstdlib>
#include <string.h>
#include <sstream>
int main(int argc, char *argv[]){
    ros::init(argc,argv,"Talker");
    ros::NodeHandle node_handle;
    ros::Publisher pub = node_handle.advertise<std_msgs::String>("chatter",10);
    uint16_t count = 0;
    ros::Rate rate(10);
    while(ros::ok()){
        std_msgs::String msg;
        std::string hello("Hello world! ");
        std::string counter = std::to_string(++count);
        hello+=counter;
        msg.data = hello;
        ROS_INFO("%s",msg.data.c_str()); //ROS_INFO is the equivalent of printf()
        pub.publish(msg);
        ros::spinOnce();
        rate.sleep();
    }
    return 0;
}
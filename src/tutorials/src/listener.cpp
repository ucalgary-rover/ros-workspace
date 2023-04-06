#include "ros/ros.h"
#include "std_msgs/String.h"
#include <cstdlib>
#include <string.h>
void callback(const std_msgs::String::ConstPtr& recv_msg){
    ROS_INFO("%s",recv_msg->data.c_str());
}
int main(int argc, char* argv[]){
    ros::init(argc,argv,"Listener");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe("chatter",10,callback);
    ros::spin();
    return 0;
}

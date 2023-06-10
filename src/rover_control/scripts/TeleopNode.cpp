#include "ros/ros.h"
#include <sensor_msgs/Joy.h>
#include <rover_control/Drive.h>
#include <iostream>
#include <algorithm>
#include <thread>
#include <chrono>
using namespace ros;
using namespace std;
class TeleopNode{
    protected:
        ros::NodeHandle nodeHandle;
        ros::Publisher pub;
        ros::Subscriber sub;
        ros::Rate rate;
        std::thread spin_thread;
        float lower_bound;
        float upper_bound;
        unsigned int queue_size;
        
    public:

        TeleopNode(const std::string& node_name=std::string("teleop_node"), float lower_bound = -1, float upper_bound = 1, unsigned int queue_size = 10);
        void drive_callback(const sensor_msgs::JoyConstPtr& joyMsg);
        NodeHandle& get_nodehandle(){return this->nodeHandle;} 
        Publisher get_publisher(){return this->pub;}
        Subscriber get_subscriber(){return this->sub;}
        void config_subscriber(Subscriber& sub){this->sub = sub;}
        void config_publisher(Publisher& pub){this->pub = pub;}
        float bound(float value);
        void set_upper_bound(float value);
        void set_lower_bound(float value);

};

TeleopNode::TeleopNode(const std::string& node_name, float lower_bound, float upper_bound, unsigned int queue_size):rate(ros::Rate(1)){
    this->upper_bound = upper_bound;
    this->lower_bound = lower_bound;   
    this->pub = nodeHandle.advertise<rover_control::Drive>("drive_speed",10);
    this->sub = nodeHandle.subscribe<sensor_msgs::Joy>("joy",10,&TeleopNode::drive_callback,this);
}
inline float TeleopNode::bound(float value){
    return std::max(this->lower_bound,std::min(value,this->upper_bound));
}
void TeleopNode::drive_callback(const sensor_msgs::JoyConstPtr& joyMsg){
    ROS_INFO("Callback!");
    rover_control::Drive driveMsg;
    driveMsg.left_speed = bound(joyMsg->axes[1]);
    driveMsg.right_speed = bound(joyMsg->axes[4]);
    ROS_INFO("Left Speed = %f",driveMsg.left_speed);
    this->pub.publish(driveMsg);
} 
int main(int argc, char*argv[]){
    ros::init(argc,argv,"teleop_node");
    TeleopNode node;
    ros::spin();
    return 0;
}
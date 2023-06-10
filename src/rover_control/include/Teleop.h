#include <ros/ros.h>
#include <sensor_msgs/Joy.h>
#include <rover_control/Drive.h>
#include <algorithm>
#include <chrono>
#include <cstdlib>
#include <functional>
#include <iostream>
#include <memory>
#include <thread>
#include <string>

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
        ros::Publisher get_publisher(){return this->pub;}
        ros::Subscriber get_subscriber(){return this->sub;}
        void config_subscriber(ros::Subscriber& sub){this->sub = sub;}
        void config_publisher(ros::Publisher& pub){this->pub = pub;}
        float bound(float value);
        void set_upper_bound(float value);
        void set_lower_bound(float value);

};
#include <ros/ros.h>
#include <sensor_msgs/Joy.h>
#include <rover_control/Drive.h>
#include <exceptions/RuntimeException.h>
#include <algorithm>
#include <chrono>
#include <cstdlib>
#include <functional>
#include <iostream>
#include <memory>
#include <thread>
#include <string>
#ifndef TELEOP_H
#define TELEOP_H
class TeleopNode{
    protected:
        std::thread spin_thread;
        float lower_bound;
        float upper_bound;
        unsigned int queue_size; 
        ros::NodeHandle nodeHandle;
        ros::Publisher pub;
        ros::Subscriber sub;
        
    public:
        TeleopNode() = delete;
        TeleopNode(const std::string& node_name=std::string("teleop_node"), float lower_bound = -1, float upper_bound = 1, unsigned int queue_size = 10);
        TeleopNode(TeleopNode&& src);
        void drive_callback(const sensor_msgs::JoyConstPtr& joyMsg);
        ros::Publisher get_publisher();
        ros::Subscriber get_subscriber();
        float bound(float value);
        void EventLoop();
        void set_global_limit(float abs_limit,float median = 0);
        /** \brief sets the semantic upper bound of the class.
        * If \code upper_bound \endcode is smaller than the
        * existing \code lower_bound \endcode value, this will
        * set the lower bound value instead.
        /// @param value the value to set as the maximum value*/
        void set_upper_bound(float value);
        void set_lower_bound(float value);
        ~TeleopNode();

};
#endif
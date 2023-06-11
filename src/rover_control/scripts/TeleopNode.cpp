#include <Teleop.h>
using namespace ros;
using namespace std;
TeleopNode::TeleopNode(const std::string& node_name, float lower_bound, float upper_bound, unsigned int queue_size):nodeHandle(node_name),rate(ros::Rate(1)){
    this->upper_bound = upper_bound;
    this->lower_bound = lower_bound;   
    this->pub = nodeHandle.advertise<rover_control::Drive>("drive_speed",10);
    this->sub = nodeHandle.subscribe<sensor_msgs::Joy>("joy",10,&TeleopNode::drive_callback,this);
}
inline float TeleopNode::bound(float value){
    return std::max(this->lower_bound,std::min(value,this->upper_bound));
}
void TeleopNode::drive_callback(const sensor_msgs::JoyConstPtr& joyMsg){
    rover_control::Drive driveMsg;
    driveMsg.left_speed = bound(joyMsg->axes[1]);
    driveMsg.right_speed = bound(joyMsg->axes[4]);
    this->pub.publish(driveMsg);
}

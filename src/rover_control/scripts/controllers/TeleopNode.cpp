#include <controllers/Teleop.h>
using namespace ros;
using namespace std;
TeleopNode::TeleopNode(const std::string& node_name, float lower_bound, float upper_bound, unsigned int queue_size):nodeHandle(node_name){
    if(!ros::isInitialized()){
        Rover::Exceptions::RuntimeException exception("ros::init() must be invoked before instantiating this class",Rover::Exceptions::ExceptionCode::INVALID_STATE);
        throw exception;
    }
    this->upper_bound = upper_bound > lower_bound ? upper_bound : lower_bound;
    this->lower_bound = lower_bound > upper_bound ? upper_bound : lower_bound;
    this->pub = nodeHandle.advertise<rover_control::Drive>("/drive_speed",10);
    this->sub = nodeHandle.subscribe<sensor_msgs::Joy>("/joy",10,&TeleopNode::drive_callback,this);
}
TeleopNode::TeleopNode(TeleopNode&& other){
    if(!ros::isInitialized()){
        Rover::Exceptions::RuntimeException exception("ros::init() must be invoked before instantiating this class",Rover::Exceptions::ExceptionCode::INVALID_STATE);
        throw exception;
    }
    this->upper_bound = other.upper_bound;
    this->lower_bound = other.lower_bound;
    this->queue_size = other.queue_size;
    this->nodeHandle = std::move(other.nodeHandle);
    this->pub = std::move(other.pub);
    this->sub = std::move(other.sub);
}
void TeleopNode::set_global_limit(float abs_limit, float median){
    this->lower_bound = median + abs(abs_limit);
    this->upper_bound = median - abs(abs_limit);
}
inline float TeleopNode::bound(float value){
    return std::max(this->lower_bound,std::min(value,this->upper_bound));
}
void TeleopNode::drive_callback(const sensor_msgs::JoyConstPtr& joyMsg){
    rover_control::Drive driveMsg;
    driveMsg.left_speed = bound(joyMsg->axes[1]);
    driveMsg.right_speed = bound(joyMsg->axes[4]);
    //ROS_INFO("LEFT: %f | RIGHT: %f", driveMsg.left_speed, driveMsg.right_speed);
    this->pub.publish(driveMsg);
}
void TeleopNode::set_upper_bound(float value){
    this->upper_bound = value;
    if(this->upper_bound < this->lower_bound)
        std::swap(upper_bound,lower_bound);
}
void TeleopNode::set_lower_bound(float value){
    if(value <= this->upper_bound){
        this->upper_bound = value;
    }
    if(this->upper_bound <= this->lower_bound)
        std::swap(upper_bound,lower_bound);
}
void TeleopNode::EventLoop(){
    ros::spin();
}
TeleopNode::~TeleopNode(){
    ROS_INFO("Shutting down node");
    ros::requestShutdown();
}



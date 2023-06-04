#include "ros/ros.h"
#include <sensor_msgs/Joy.h>
#include <rover_control/Drive.h>
#include <algorithm>

using namespace ros;
using namespace std;
class TeleopNode{
    protected:
        ros::NodeHandle nodeHandle;
        ros::Publisher pub;
        ros::Subscriber sub;
        ros::Rate rate;
        float lower_bound;
        float upper_bound;
        unsigned int queue_size;
        
    public:
        TeleopNode(const NodeHandle& nodeHandle=NodeHandle(), double spinrate = 10, float lower_bound = -1, float upper_bound = -1, unsigned int queue_size = 10):
            nodeHandle(nodeHandle), 
            rate(spinrate),
            lower_bound(lower_bound),
            upper_bound(upper_bound),
            queue_size(queue_size)
        {}
        NodeHandle& node_handle(){return this->nodeHandle;} 
        Publisher& publisher(){return this->pub;}
        Subscriber& subscriber(){return this->sub;}
        float bound(float value);
        void Driver();
        void callback(const sensor_msgs::JoyConstPtr& joyMsg);
};
inline float TeleopNode::bound(float value){
    return std::max(this->lower_bound,std::min(value,this->upper_bound));
}
void TeleopNode::callback(const sensor_msgs::JoyConstPtr& joyMsg){
    rover_control::Drive driveMsg;
    driveMsg.left_speed = bound(joyMsg->axes[1]);
    driveMsg.right_speed = bound(joyMsg->axes[4]);
    this->pub.publish(driveMsg);
}
void TeleopNode::Driver(){
    while(this->nodeHandle.ok()){
        ros::spinOnce();
        rate.sleep();
    }
}
int main(int argc, char*argv[]){
    ros::init(argc,argv,"teleop_node");
    TeleopNode node;
    node.publisher() = node.node_handle().advertise<rover_control::Drive>("drive_speed",10);
    node.subscriber() = node.node_handle().subscribe("Joy",10,&TeleopNode::callback,&node);
    node.Driver();
    return 0;
}
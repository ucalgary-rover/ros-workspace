#include <Teleop.h>
int main(int argc, char*argv[]){
    ros::init(argc,argv,"teleop_node");
    TeleopNode node;
    ros::spin();
    return 0;
}
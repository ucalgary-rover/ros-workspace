#include <controllers/Teleop.h>
int main(int argc, char*argv[]){
    ros::init(argc,argv,"control");
    TeleopNode node("control");
    ros::spin();
    return 0;
}
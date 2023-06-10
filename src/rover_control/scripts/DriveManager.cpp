#include <DriveManager.h>
DriveManager::DriveManager(){}
template<typename F>
void register_motor(DCMotor& device, F& initializer){
    this->motors.push_back(device);
    try{
        initializer();
    }
    catch(DCMotorException& ex){
        ROS_ERROR(ex.msg);
    }
    catch(...){
        ROS_ERROR("Failed to initialize device");
    }
    
    //TODO: Check if hub port already is assigned to a motor
    

}

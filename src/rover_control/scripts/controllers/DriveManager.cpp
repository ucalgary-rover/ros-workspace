#include <controllers/DriveManager.h>
using namespace Rover;
using namespace Motors;
DriveManager::DriveManager(){}
DCMotor& DriveManager::create_motor(const std::string& name, int port, double acceleration, uint32_t timeout_ms){
    for(DCMotor& motor:motors){
        if(motor.device_port() == port){
            ROS_INFO("A motor is already bound to port %d",port);
            throw new std::runtime_error("Illegal argument passed to motor manager");
        }
    }
    do{
        try{
            this->motors.emplace_back(name,port);
            this->motors.back().initialize();
            this->motors.back().connect(acceleration,timeout_ms);
            break;
        }
        catch(Rover::Exceptions::DCMotorException& ex){
            ROS_ERROR(ex.what());
            this->motors.pop_back();
        }
        catch(...){
            ROS_ERROR("Failed to initialize device");
            this->motors.pop_back();
        }
        std::this_thread::sleep_for(std::chrono::milliseconds(2500));
    }while(1);
    ROS_INFO("Successfully added motor \"%s\" on port %d",name.c_str(),port);
    return;
}
void DriveManager::enable_all_failsafe(uint32_t interval){
    std::vector<DCMotor>::iterator iter = motors.begin();
    while(iter != this->motors.end()){
        try{
            iter->enableFailsafe(interval);
            iter++;
        }
        catch(Rover::Exceptions::DCMotorException& ex){
            ROS_ERROR("%s",ex.what());
        }
        catch(std::exception& err){
            ROS_ERROR("%s",err.what());
        }
        catch(...){
            ROS_ERROR("Unknown error occurred while trying to enable failsafe");
        }
    }
}
//TODO:: add functiont to reconnect ONE motor
void DriveManager::DCMotor_Reconnect(){
    for(DCMotor& motor : motors){
        try{
            motor.connect();
        }
        catch(Rover::Exceptions::DCMotorException)
        {

        }
    }
}

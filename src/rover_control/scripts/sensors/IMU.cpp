#include <sensors/IMU.h>
using namespace Rover;
using namespace Sensors;
IMU::IMU():initialized(false){}
void IMU::initialize(){
    PhidgetReturnCode status;
    status = PhidgetSpatial_create(&(this->channel));
    if(status != EPHIDGET_OK){
        Rover::Exceptions::RuntimeException ex(Rover::Exceptions::EX_CODE::OTHER);
        char* msg;
        Phidget_getErrorDescription(status,&msg);
        ex.setErrorMessage(msg);
        
        //TODO: Throw an exception here
    }
}
void IMU::connect(uint32_t timeout_ms){
    PhidgetReturnCode status = Phidget_openWaitForAttachment((PhidgetHandle)this->channel,timeout_ms);
    if(status != EPHIDGET_OK){
        Rover::Exceptions::PhidgetException ex;
        ex.setErrorMessage("Exception");
        throw ex;
    }
}
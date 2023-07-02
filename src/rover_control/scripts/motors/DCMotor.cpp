#include <motors/DCMotor.h>
#include <phidget22.h>
using namespace ros;
using namespace std;
//if motor disconnects, need to call openWaitForAttachment() and not delete channel
using namespace Rover;
using namespace Rover::Motors;
DCMotor::DCMotor(const std::string& name, int port, DCMotorLocation location):
deviceName(name),port(port),location(location){}
void DCMotor::initialize(){
    PhidgetReturnCode status;
    status = PhidgetDCMotor_create(&(this->channel));
    if(status != EPHIDGET_OK){
        Rover::Exceptions::DCMotorException ex;
        createException(ex,status);
        throw ex;
    }
    status = Phidget_setHubPort((PhidgetHandle)this->channel,port);
    if(status != EPHIDGET_OK){
        Rover::Exceptions::DCMotorException ex;
        createException(ex,status);
        throw ex;
    }
}
void DCMotor::createException(Rover::Exceptions::DCMotorException& ex, const PhidgetReturnCode& phidgetCode)const noexcept{
    std::string red_formatter("\e[1;31m");
    std::string formatter_end("\e[0m");
    std::string msg = red_formatter+"DEVICE ERROR ["+this->deviceName+"]" + formatter_end + ":\n";
    const char* desc;
    if(EPHIDGET_OK == Phidget_getErrorDescription(phidgetCode,&desc))
        ex.set_error_message(msg+std::string(desc));
    else{
        //if we can't get the error code for some reason
        std::stringstream stream;
        stream << std::hex << (uint32_t)phidgetCode;
        msg += "Failed with error code [" + stream.str() + "]"; 
    }
    return;
}
void DCMotor::throwException(PhidgetReturnCode& phidgetCode){
    Rover::Exceptions::DCMotorException ex;
    std::string red_formatter("\e[1;31m");
    std::string formatter_end("\e[0m");
    std::string msg = red_formatter+"DEVICE ERROR ["+this->deviceName+"]" + formatter_end + ":\n";
    const char* desc;
    if(EPHIDGET_OK == Phidget_getErrorDescription(phidgetCode,&desc))
        ex.set_error_message(msg+std::string(desc));
    else{
        //if we can't get the error code for some reason
        std::stringstream stream;
        stream << std::hex << (uint32_t)phidgetCode;
        msg += "Failed with error code [" + stream.str() + "]"; 
    }
    throw ex;
}
std::string DCMotor::name()const noexcept{
    return this->deviceName;
}
PhidgetDCMotorHandle& DCMotor::PhidgetChannel() noexcept{
    return this->channel;
}   
void DCMotor::enableFailsafe(const uint32_t timeout_ms){
    PhidgetReturnCode status;
    if((status = PhidgetDCMotor_enableFailsafe(this->channel,timeout_ms))!=EPHIDGET_OK){
        Rover::Exceptions::DCMotorException ex;
        createException(ex,status);
        throw ex;
    }
}
void DCMotor::resetFailsafe(){
    PhidgetReturnCode status;
    if((status = PhidgetDCMotor_resetFailsafe(this->channel))!=EPHIDGET_OK){
        Rover::Exceptions::DCMotorException ex;
        createException(ex,status);
        throw ex;
    }
}
void DCMotor::setTargetBrakingStrength(double percent){
    PhidgetReturnCode status = PhidgetDCMotor_setTargetBrakingStrength(this->channel,percent);
    if(status !=EPHIDGET_OK){
        Rover::Exceptions::DCMotorException ex;
        createException(ex,status);
        throw ex;
    }
}
void DCMotor::setTargetSpeed(double speed){
    PhidgetReturnCode status;
    if((status = PhidgetDCMotor_setTargetVelocity(this->channel, speed))!=EPHIDGET_OK){
        Rover::Exceptions::DCMotorException ex;
        createException(ex,status);
        throw ex;
    }
}
void DCMotor::connect(double acceleration, uint32_t timeout_ms){
    PhidgetReturnCode status = Phidget_openWaitForAttachment((PhidgetHandle)this->channel,timeout_ms);
    if(status != EPHIDGET_OK){
        Rover::Exceptions::DCMotorException ex;
        createException(ex,status);
        throw ex;
    }
    status = PhidgetDCMotor_setFanMode(this->channel,FAN_MODE_AUTO);
    if(status != EPHIDGET_OK){
        Rover::Exceptions::DCMotorException ex;
        createException(ex,status);
        throw ex;
    }
    status = PhidgetDCMotor_setAcceleration(this->channel,acceleration);
    if(status != EPHIDGET_OK){
        Rover::Exceptions::DCMotorException ex;
        createException(ex,status);
        throw ex;
    }
    status = PhidgetDCMotor_setTargetVelocity(this->channel,0);
    if(status != EPHIDGET_OK){
        Rover::Exceptions::DCMotorException ex;
        createException(ex,status);
        throw ex;
    }
}
int DCMotor::device_port() const noexcept{
    return this->port;
}
DCMotorLocation DCMotor::motor_location() const noexcept{
    return this->location; 
}
bool DCMotor::ok() noexcept{
    int attached = 0;
    PhidgetReturnCode status = Phidget_getAttached((PhidgetHandle)this->channel,&attached);
    return (status == EPHIDGET_OK && attached == 1);
}
void DCMotor::shutdown(){
    if(this->ok())
        this->setTargetSpeed(0);
    PhidgetReturnCode status = Phidget_close((PhidgetHandle)this->channel);
    if(status != EPHIDGET_OK){
        Rover::Exceptions::DCMotorException ex;
        createException(ex,status);
        throw ex;
    }
}
void DCMotor::hard_shutdown(){
    Phidget_close((PhidgetHandle)this->channel);
}
DCMotor::~DCMotor(){
    Phidget_delete((PhidgetHandle*)&this->channel);
}



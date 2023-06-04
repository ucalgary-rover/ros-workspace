#include <DCMotor.h>
using namespace ros;
using namespace std;
//if motor disconnects, need to call openWaitForAttachment() and not delete channel
void DCMotor::createException(DCMotorException& ex, const PhidgetReturnCode& phidgetCode)const noexcept{
    switch(phidgetCode){
        case EPHIDGET_CLOSED:
            ex.error_type() = DCMotorException::ExceptionType::DISCONNECTED;
            ex.error_message() = std::string("Could not communicate with motor. Try closing and reopening the channel");
            break;
        case EPHIDGET_FAILSAFE:
            ex.error_type() = DCMotorException::ExceptionType::FAILSAFE;
            ex.error_message() = std::string("Failsafe timer has expired. Close and reopen the channel to continue using this resource");
            break;
        default:
            ex.error_type() = DCMotorException::ExceptionType::UNKNOWN_ERROR;
            ex.error_message() = std::string("Could not communicate with motor. Try closing and reopening the channel");
            break;
    }
    //add the phidget return code so we know what's going on
    std::stringstream str;
    str<<" Phidget Code: "<< std::hex<<static_cast<int>(phidgetCode);
    ex.error_message()+=str.str();
}
void DCMotor::checkForException(const PhidgetReturnCode& phidgetCode){
    DCMotorException ex;
    ex.error_message() = name();
    switch(phidgetCode){
        case EPHIDGET_OK:
            return;
        case EPHIDGET_CLOSED:
            ex.error_type() = DCMotorException::ExceptionType::DISCONNECTED;
            ex.error_message() += std::string("- Could not communicate with motor. Try closing and reopening the channel");
            break;
        case EPHIDGET_FAILSAFE:
            ex.error_type() = DCMotorException::ExceptionType::FAILSAFE;
            ex.error_message() += std::string("- Failsafe timer has expired. Close and reopen the channel to continue using this resource");
            break;
        default:
            ex.error_type() = DCMotorException::ExceptionType::UNKNOWN_ERROR;
            ex.error_message() += std::string("- Could not communicate with motor. Try closing and reopening the channel");
            break;
    }
    std::stringstream str;
    str<<" Phidget Code: "<< std::hex<<static_cast<int>(phidgetCode);
    ex.error_message()+=str.str();
    throw ex;
}
DCMotor::DCMotor(const DCMotor::MountPoint& mount):mountPoint(mountPoint){
    PhidgetDCMotor_create(&(this->channel));
    Phidget_setHubPort((PhidgetHandle)this->channel,(int)mountPoint);
}
std::string DCMotor::name()const noexcept{
    switch(this->mountPoint){
        case LEFT_FRONT:    return std::string("LEFT FRONT");
        case LEFT_MIDDLE:   return std::string("LEFT MIDDLE");
        case LEFT_BACK:     return std::string("LEFT BACK");
        case RIGHT_FRONT:   return std::string("RIGHT FRONT");
        case RIGHT_MIDDLE:  return std::string("RIGHT MIDDLE");
        case RIGHT_BACK:    return std::string("RIGHT BACK");          
    }
}
PhidgetDCMotorHandle& DCMotor::PhidgetChannel() noexcept{
    return this->channel;
}   
void DCMotor::enableFailsafe(const uint32_t timeout_ms){
    PhidgetReturnCode status;
    if((status = PhidgetDCMotor_enableFailsafe(this->channel,timeout_ms))!=EPHIDGET_OK){
        DCMotorException ex;
        createException(ex,status);
        throw ex;
    }
}
void DCMotor::resetFailsafe(){
    PhidgetReturnCode status;
    if((status = PhidgetDCMotor_resetFailsafe(this->channel))!=EPHIDGET_OK){
        DCMotorException ex;
        createException(ex,status);
        throw ex;
    }
}
void DCMotor::setTargetSpeed(double speed){
    PhidgetReturnCode status;
    if((status = PhidgetDCMotor_setTargetVelocity(this->channel, speed))!=EPHIDGET_OK){
        DCMotorException ex;
        createException(ex,status);
        throw ex;
    }
}
void DCMotor::initialize(double acceleration, unsigned int timeout_ms){
    PhidgetReturnCode status = Phidget_openWaitForAttachment((PhidgetHandle)this->channel,timeout_ms);
    if(status != EPHIDGET_OK){
        DCMotorException ex;
        createException(ex,status);
        throw ex;
    }
    status = PhidgetDCMotor_setFanMode(this->channel,FAN_MODE_AUTO);
    if(status != EPHIDGET_OK){
        DCMotorException ex;
        createException(ex,status);
        throw ex;
    }
    status = PhidgetDCMotor_setAcceleration(this->channel,acceleration);
    if(status != EPHIDGET_OK){
        DCMotorException ex;
        createException(ex,status);
        throw ex;
    }
    status = PhidgetDCMotor_setTargetVelocity(this->channel,acceleration);
    if(status != EPHIDGET_OK){
        DCMotorException ex;
        createException(ex,status);
        throw ex;
    }
}



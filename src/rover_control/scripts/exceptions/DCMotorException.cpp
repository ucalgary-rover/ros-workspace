#include <exceptions/DCMotorException.h>
using namespace Rover;
using namespace Exceptions;
DCMotorException::DCMotorException():RuntimeException("",ExceptionCode::GENERIC){
}
DCMotorException::DCMotorException(const ExceptionCode& errorType):RuntimeException(errorType){
    switch (this->code){
        case FAILSAFE:
            this->message = std::string("Failsafe is active. Reopen the channel to use this motor again");
        case INVALID_STATE:
            this->message = std::string("Motor is in an invalid state to perform this operation");
        case INVALID_ARGUMENT:
            this->message = std::string("An illegal argument was passed");
        case DISCONNECTED:
            this->message = std::string("Motor is disconnected!");
    };
}
DCMotorException::DCMotorException(const std::string& message, const ExceptionCode& errorType):RuntimeException(message,errorType){

}
DCMotorException& DCMotorException::operator=(const DCMotorException& other){
    if(this != &other){
        this->message = other.message;
        this->code= other.code;
    }
    return *this;
}
bool DCMotorException::operator==(const DCMotorException& other){
     if(this == &other){
        return true;
    }
    else{
        return (this->message == other.message && this->code == other.code);
    }
}
bool DCMotorException::operator!=(const DCMotorException& other){
    if(this == &other){
        return false;
    }
    else{
        return !(this->message == other.message && this->code == other.code);
    }
}
ExceptionCode& DCMotorException::error_type(){
    return this->code;
}
void DCMotorException::set_error_message(const std::string& message){
    this->message = message;
}
void DCMotorException::set_error_message(const char* message){
    this->message = std::string(message);
}
char* DCMotorException::what(){
    return strcpy(new char[this->message.length()+1],message.c_str());
}
#include <DCMotorException.h>
using namespace std;
DCMotorException::DCMotorException(){
    this->type = ExceptionType::UNKNOWN_ERROR;
    this->msg = std::string("Unknown error");
}
DCMotorException::DCMotorException(const DCMotorException::ExceptionType& errorType):type(errorType){
    switch (this->type){
        case FAILSAFE:
            this->msg = std::string("Failsafe is active. Reopen the channel to use this motor again");
        case INVALID_STATE:
            this->msg = std::string("Motor is in an invalid state to perform this operation");
        case ILLEGAL_ARGUMENT:
            this->msg = std::string("An illegal argument was passed");
        case DISCONNECTED:
            this->msg = std::string("Motor is disconnected!");
    };
}
DCMotorException::DCMotorException(const std::string& msg, const DCMotorException::ExceptionType& errorType){
    this->msg = msg;
    this->type = errorType;
}
DCMotorException& DCMotorException::operator=(const DCMotorException& other){
    if(this != &other){
        this->msg = other.msg;
        this->type = other.type;
    }
    return *this;
}
bool DCMotorException::operator==(const DCMotorException& other){
     if(this == &other){
        return true;
    }
    else{
        return (this->msg == other.msg && this->type == other.type);
    }
}
bool DCMotorException::operator!=(const DCMotorException& other){
    if(this == &other){
        return false;
    }
    else{
        return !(this->msg == other.msg && this->type == other.type);
    }
}
DCMotorException::ExceptionType& DCMotorException::error_type(){
    return this->type;
}
void DCMotorException::set_error_message(const std::string& msg){
    this->msg = msg;
}
void DCMotorException::set_error_message(const char* msg){
    this->msg = std::string(msg);
}
char* DCMotorException::what(){
    return strcpy(new char[this->msg.length()+1],msg.c_str());
}
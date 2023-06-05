#include <cstdlib>
#include <exception>
#include <ros/ros.h>
#include <string>
#ifndef DCMOTOREXCEPTION_H
#define DCMOTOREXCEPTION_H
class DCMotorException: public std::exception{
    public:
        enum ExceptionType{
            FAILSAFE = 0,
            INVALID_STATE,
            ILLEGAL_ARGUMENT,
            DISCONNECTED,
            UNKNOWN_ERROR
        };
    private:
        std::string msg;
        ExceptionType type;
    public:
        DCMotorException();
        DCMotorException(const DCMotorException::ExceptionType& errorType);
        DCMotorException(const std::string& msg, const ExceptionType& errorType);
        DCMotorException& operator=(const DCMotorException& other);
        bool operator==(const DCMotorException& other);
        bool operator!=(const DCMotorException& other);
        ExceptionType& error_type();
        void set_error_message(const char* msg);
        void set_error_message(const std::string&msg);
        char* what();
};
#endif

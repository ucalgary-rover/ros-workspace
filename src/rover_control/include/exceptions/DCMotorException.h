#include <cstdlib>
#include <exception>
#include <ros/ros.h>
#include <string>
#include <exceptions/RuntimeException.h>
#ifndef DCMOTOREXCEPTION_H
#define DCMOTOREXCEPTION_H
namespace Rover{
    namespace Exceptions{
        class DCMotorException: public Rover::Exceptions::RuntimeException{
            public:
                DCMotorException();
                DCMotorException(const ExceptionCode& errorType);
                DCMotorException(const std::string& msg, const ExceptionCode& errorType);
                DCMotorException& operator=(const DCMotorException& other);
                bool operator==(const DCMotorException& other);
                bool operator!=(const DCMotorException& other);
                ExceptionCode& error_type();
                void set_error_message(const char* msg);
                void set_error_message(const std::string&msg);
                char* what();
        };
    }
}
#endif

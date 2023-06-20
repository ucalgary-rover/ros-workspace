#include <cstdlib>
#include <exception>
#include <iostream>
#include <stdexcept>
#include <string.h>

#ifndef RUNTIMEEXCEPTION_H
#define RUNTIMEEXCEPTION_H
namespace Rover
{
    namespace Exceptions
    {
        enum ExceptionCode
        {
            DISCONNECTED = 0,
            INVALID_STATE,
            INVALID_ARGUMENT,
            BAD_POWER,
            FAILSAFE,
            GENERIC,
            UNKNOWN,
            OTHER,
        } typedef EX_CODE;

        class RuntimeException : public std::exception
        {
            protected:
                std::string message;
                ExceptionCode code;
            public:
                RuntimeException();
                RuntimeException(const ExceptionCode& code);
                RuntimeException(const std::string& message, const ExceptionCode& code);
                RuntimeException(const RuntimeException& other);
                RuntimeException& operator=(const RuntimeException& other) noexcept;
                virtual bool operator==(const RuntimeException& other) const noexcept;
                virtual bool operator!=(const RuntimeException& other) const noexcept;
                virtual bool operator==(const ExceptionCode& code) const noexcept;
                virtual bool operator!=(const ExceptionCode& code) const noexcept;
                virtual ExceptionCode getExceptionCode() const noexcept;
                virtual std::string getErrorMessage()const noexcept;
                virtual void setErrorMessage(const std::string& new_msg) noexcept;
                virtual void setExceptionCode(const ExceptionCode& new_code) noexcept;
                virtual char* what();
                virtual ~RuntimeException();
        };
    }
}
#endif

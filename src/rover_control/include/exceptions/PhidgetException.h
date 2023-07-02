#include <phidget22.h>
#include <exceptions/RuntimeException.h>
#ifndef PHIDGETEXCEPTION_H
#define PHIDGETEXCEPTION_H
namespace Rover{
    namespace Exceptions{
        class PhidgetException : public RuntimeException{
            public:
                PhidgetException();
                PhidgetException(const PhidgetReturnCode& code);
                ~PhidgetException();
            static std::string PhidgetErrorDescription(PhidgetReturnCode& code) noexcept;
        };
    }
}
#endif
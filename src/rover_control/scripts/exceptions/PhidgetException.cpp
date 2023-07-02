#include <PhidgetException.h>
#include <phidget22.h>
#include <exceptions/RuntimeException.h>
using namespace Rover;
using namespace Rover::Exceptions;
PhidgetException::PhidgetException():RuntimeException(std::string(""),EX_CODE::UNKNOWN){}
std::string PhidgetException::PhidgetErrorDescription(PhidgetReturnCode& code) noexcept{
    const char* message;
    PhidgetReturnCode status = Phidget_getErrorDescription(code,&message);
    std::string errorString(message);
   
}
#if 0
namespace Rover{
    namespace Exceptions{
        class PhidgetException : public RuntimeException{
            public:
                PhidgetException();
                PhidgetException(const PhidgetReturnCode& code);
                ~PhidgetException();
            static std::string PhidgetErrorDescription(PhidgetReturnCode& code);
        };
    }
}
#endif
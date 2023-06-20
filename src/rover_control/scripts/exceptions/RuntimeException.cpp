#include <exceptions/RuntimeException.h>
using namespace Rover;
using namespace Exceptions;

RuntimeException::RuntimeException(){
    this->code = ExceptionCode::GENERIC;
    this->message = "";
}
RuntimeException::RuntimeException(const ExceptionCode& code):code(code){
    this->message = "";
}
RuntimeException::RuntimeException(const RuntimeException& other):message(other.message),code(other.code){}
RuntimeException::RuntimeException(const std::string& message, const ExceptionCode& exceptionCode):message(message),code(exceptionCode){}
RuntimeException& RuntimeException::operator=(const RuntimeException& other) noexcept{
    if(this != &other){
        this->message = other.message;
        this->code = other.code;
    }
    return *this;
}
bool RuntimeException::operator==(const ExceptionCode& code) const noexcept{
    return this->code == code;
}
bool RuntimeException::operator==(const RuntimeException& other) const noexcept{
    return (this->message == other.message && this->code == other.code) || this == &other;
}
bool RuntimeException::operator!=(const RuntimeException& other)const noexcept{
    return !(*this == other);
}
bool RuntimeException::operator!=(const ExceptionCode& code) const noexcept{
    return !(*this == code);
}
ExceptionCode RuntimeException::getExceptionCode() const noexcept{
    return this->code;
}
std::string RuntimeException::getErrorMessage() const noexcept{
    return this->message;
}
void RuntimeException::setErrorMessage(const std::string& new_msg) noexcept{
    this->message = new_msg;
}
void RuntimeException::setExceptionCode(const ExceptionCode& new_code) noexcept{
    this->code = new_code;
}
char* RuntimeException::what(){
    char* output_message = new char[this->message.length()+1];
    strcpy(output_message,this->message.c_str());
    return output_message;
}
RuntimeException::~RuntimeException(){
}

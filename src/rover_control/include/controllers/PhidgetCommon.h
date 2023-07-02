#include <ros/ros.h>
#include <cstdlib>
#include <string.h>
#include <functional>
#include <algorithm>
#include <memory>
#include <vector>
#include <exception>
#include <stdexcept>
#include <phidget22.h>

#ifndef PHIDGETCOMMON_H
#define PHIDGETCOMMON_H
namespace Rover{
    namespace Common
    {
        template <class C>
        class PhidgetImpl{
            protected:
                C channel;
                std::string deviceName;
            public:
                PhidgetImpl():deviceName(""){}
                PhidgetImpl(const std::string& name):deviceName(name){}
                virtual void initialize();
                virtual void connect();
                virtual std::string name();
                virtual void name(const std::string& name);
                virtual bool attached()
                virtual ~PhidgetImpl();
        };
    }
}
#endif
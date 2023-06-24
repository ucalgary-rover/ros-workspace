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
#if 0
    #ifndef PHIDGETCOMMON_H
    #define PHIDGETCOMMON_H
    namespace Rover{
        namespace Common
        {
            template <class C>
            class PhidgetsDevice{
                protected:
                    C channel;
                    std::string deviceName;
                public:
                    PhidgetsDevice(const typename C& channel):channel(channel),deviceName(""){}
                    PhidgetsDevice(const typename C& channel, const std::string& name):channel(channel){}
                    virtual void initialize();
                    virtual void connect();
                    virtual std::string name();
                    virtual void name(const std::string& name);
                    virtual ~PhidgetDevice();
            };
        }
    }
    #endif
#endif
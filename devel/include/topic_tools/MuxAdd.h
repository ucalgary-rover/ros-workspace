// Generated by gencpp from file topic_tools/MuxAdd.msg
// DO NOT EDIT!


#ifndef TOPIC_TOOLS_MESSAGE_MUXADD_H
#define TOPIC_TOOLS_MESSAGE_MUXADD_H

#include <ros/service_traits.h>


#include <topic_tools/MuxAddRequest.h>
#include <topic_tools/MuxAddResponse.h>


namespace topic_tools
{

struct MuxAdd
{

typedef MuxAddRequest Request;
typedef MuxAddResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MuxAdd
} // namespace topic_tools


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::topic_tools::MuxAdd > {
  static const char* value()
  {
    return "d8f94bae31b356b24d0427f80426d0c3";
  }

  static const char* value(const ::topic_tools::MuxAdd&) { return value(); }
};

template<>
struct DataType< ::topic_tools::MuxAdd > {
  static const char* value()
  {
    return "topic_tools/MuxAdd";
  }

  static const char* value(const ::topic_tools::MuxAdd&) { return value(); }
};


// service_traits::MD5Sum< ::topic_tools::MuxAddRequest> should match
// service_traits::MD5Sum< ::topic_tools::MuxAdd >
template<>
struct MD5Sum< ::topic_tools::MuxAddRequest>
{
  static const char* value()
  {
    return MD5Sum< ::topic_tools::MuxAdd >::value();
  }
  static const char* value(const ::topic_tools::MuxAddRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::topic_tools::MuxAddRequest> should match
// service_traits::DataType< ::topic_tools::MuxAdd >
template<>
struct DataType< ::topic_tools::MuxAddRequest>
{
  static const char* value()
  {
    return DataType< ::topic_tools::MuxAdd >::value();
  }
  static const char* value(const ::topic_tools::MuxAddRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::topic_tools::MuxAddResponse> should match
// service_traits::MD5Sum< ::topic_tools::MuxAdd >
template<>
struct MD5Sum< ::topic_tools::MuxAddResponse>
{
  static const char* value()
  {
    return MD5Sum< ::topic_tools::MuxAdd >::value();
  }
  static const char* value(const ::topic_tools::MuxAddResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::topic_tools::MuxAddResponse> should match
// service_traits::DataType< ::topic_tools::MuxAdd >
template<>
struct DataType< ::topic_tools::MuxAddResponse>
{
  static const char* value()
  {
    return DataType< ::topic_tools::MuxAdd >::value();
  }
  static const char* value(const ::topic_tools::MuxAddResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TOPIC_TOOLS_MESSAGE_MUXADD_H
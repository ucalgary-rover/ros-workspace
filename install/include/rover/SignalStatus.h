// Generated by gencpp from file rover/SignalStatus.msg
// DO NOT EDIT!


#ifndef ROVER_MESSAGE_SIGNALSTATUS_H
#define ROVER_MESSAGE_SIGNALSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace rover
{
template <class ContainerAllocator>
struct SignalStatus_
{
  typedef SignalStatus_<ContainerAllocator> Type;

  SignalStatus_()
    : header()
    , bit_rate()
    , link_quality()
    , signal()
    , noise()  {
    }
  SignalStatus_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , bit_rate(_alloc)
    , link_quality(_alloc)
    , signal(_alloc)
    , noise(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _bit_rate_type;
  _bit_rate_type bit_rate;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _link_quality_type;
  _link_quality_type link_quality;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _signal_type;
  _signal_type signal;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _noise_type;
  _noise_type noise;





  typedef boost::shared_ptr< ::rover::SignalStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rover::SignalStatus_<ContainerAllocator> const> ConstPtr;

}; // struct SignalStatus_

typedef ::rover::SignalStatus_<std::allocator<void> > SignalStatus;

typedef boost::shared_ptr< ::rover::SignalStatus > SignalStatusPtr;
typedef boost::shared_ptr< ::rover::SignalStatus const> SignalStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rover::SignalStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rover::SignalStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rover::SignalStatus_<ContainerAllocator1> & lhs, const ::rover::SignalStatus_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.bit_rate == rhs.bit_rate &&
    lhs.link_quality == rhs.link_quality &&
    lhs.signal == rhs.signal &&
    lhs.noise == rhs.noise;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rover::SignalStatus_<ContainerAllocator1> & lhs, const ::rover::SignalStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rover

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rover::SignalStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rover::SignalStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rover::SignalStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rover::SignalStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rover::SignalStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rover::SignalStatus_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rover::SignalStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "87e213a128d72e1b3479fb7256b106e4";
  }

  static const char* value(const ::rover::SignalStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x87e213a128d72e1bULL;
  static const uint64_t static_value2 = 0x3479fb7256b106e4ULL;
};

template<class ContainerAllocator>
struct DataType< ::rover::SignalStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rover/SignalStatus";
  }

  static const char* value(const ::rover::SignalStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rover::SignalStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"string bit_rate\n"
"string link_quality\n"
"string signal\n"
"string noise\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::rover::SignalStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rover::SignalStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.bit_rate);
      stream.next(m.link_quality);
      stream.next(m.signal);
      stream.next(m.noise);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SignalStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rover::SignalStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rover::SignalStatus_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "bit_rate: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.bit_rate);
    s << indent << "link_quality: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.link_quality);
    s << indent << "signal: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.signal);
    s << indent << "noise: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.noise);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROVER_MESSAGE_SIGNALSTATUS_H

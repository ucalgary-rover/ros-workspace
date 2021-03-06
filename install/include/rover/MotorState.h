// Generated by gencpp from file rover/MotorState.msg
// DO NOT EDIT!


#ifndef ROVER_MESSAGE_MOTORSTATE_H
#define ROVER_MESSAGE_MOTORSTATE_H


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
struct MotorState_
{
  typedef MotorState_<ContainerAllocator> Type;

  MotorState_()
    : header()
    , vel_m1(0)
    , vel_m2(0)
    , vel_m3(0)
    , vel_m4(0)
    , vel_m5(0)
    , vel_m6(0)  {
    }
  MotorState_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , vel_m1(0)
    , vel_m2(0)
    , vel_m3(0)
    , vel_m4(0)
    , vel_m5(0)
    , vel_m6(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int16_t _vel_m1_type;
  _vel_m1_type vel_m1;

   typedef int16_t _vel_m2_type;
  _vel_m2_type vel_m2;

   typedef int16_t _vel_m3_type;
  _vel_m3_type vel_m3;

   typedef int16_t _vel_m4_type;
  _vel_m4_type vel_m4;

   typedef int16_t _vel_m5_type;
  _vel_m5_type vel_m5;

   typedef int16_t _vel_m6_type;
  _vel_m6_type vel_m6;





  typedef boost::shared_ptr< ::rover::MotorState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rover::MotorState_<ContainerAllocator> const> ConstPtr;

}; // struct MotorState_

typedef ::rover::MotorState_<std::allocator<void> > MotorState;

typedef boost::shared_ptr< ::rover::MotorState > MotorStatePtr;
typedef boost::shared_ptr< ::rover::MotorState const> MotorStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rover::MotorState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rover::MotorState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rover::MotorState_<ContainerAllocator1> & lhs, const ::rover::MotorState_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.vel_m1 == rhs.vel_m1 &&
    lhs.vel_m2 == rhs.vel_m2 &&
    lhs.vel_m3 == rhs.vel_m3 &&
    lhs.vel_m4 == rhs.vel_m4 &&
    lhs.vel_m5 == rhs.vel_m5 &&
    lhs.vel_m6 == rhs.vel_m6;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rover::MotorState_<ContainerAllocator1> & lhs, const ::rover::MotorState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rover

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rover::MotorState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rover::MotorState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rover::MotorState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rover::MotorState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rover::MotorState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rover::MotorState_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rover::MotorState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ec31efcca2da3deeb4742af5aa171d40";
  }

  static const char* value(const ::rover::MotorState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xec31efcca2da3deeULL;
  static const uint64_t static_value2 = 0xb4742af5aa171d40ULL;
};

template<class ContainerAllocator>
struct DataType< ::rover::MotorState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rover/MotorState";
  }

  static const char* value(const ::rover::MotorState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rover::MotorState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"int16 vel_m1\n"
"int16 vel_m2\n"
"int16 vel_m3\n"
"int16 vel_m4\n"
"int16 vel_m5\n"
"int16 vel_m6\n"
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

  static const char* value(const ::rover::MotorState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rover::MotorState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.vel_m1);
      stream.next(m.vel_m2);
      stream.next(m.vel_m3);
      stream.next(m.vel_m4);
      stream.next(m.vel_m5);
      stream.next(m.vel_m6);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MotorState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rover::MotorState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rover::MotorState_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "vel_m1: ";
    Printer<int16_t>::stream(s, indent + "  ", v.vel_m1);
    s << indent << "vel_m2: ";
    Printer<int16_t>::stream(s, indent + "  ", v.vel_m2);
    s << indent << "vel_m3: ";
    Printer<int16_t>::stream(s, indent + "  ", v.vel_m3);
    s << indent << "vel_m4: ";
    Printer<int16_t>::stream(s, indent + "  ", v.vel_m4);
    s << indent << "vel_m5: ";
    Printer<int16_t>::stream(s, indent + "  ", v.vel_m5);
    s << indent << "vel_m6: ";
    Printer<int16_t>::stream(s, indent + "  ", v.vel_m6);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROVER_MESSAGE_MOTORSTATE_H

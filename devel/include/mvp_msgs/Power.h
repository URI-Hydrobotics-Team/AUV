// Generated by gencpp from file mvp_msgs/Power.msg
// DO NOT EDIT!


#ifndef MVP_MSGS_MESSAGE_POWER_H
#define MVP_MSGS_MESSAGE_POWER_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace mvp_msgs
{
template <class ContainerAllocator>
struct Power_
{
  typedef Power_<ContainerAllocator> Type;

  Power_()
    : header()
    , voltage(0.0)
    , current(0.0)  {
    }
  Power_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , voltage(0.0)
    , current(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _voltage_type;
  _voltage_type voltage;

   typedef float _current_type;
  _current_type current;





  typedef boost::shared_ptr< ::mvp_msgs::Power_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mvp_msgs::Power_<ContainerAllocator> const> ConstPtr;

}; // struct Power_

typedef ::mvp_msgs::Power_<std::allocator<void> > Power;

typedef boost::shared_ptr< ::mvp_msgs::Power > PowerPtr;
typedef boost::shared_ptr< ::mvp_msgs::Power const> PowerConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mvp_msgs::Power_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mvp_msgs::Power_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mvp_msgs::Power_<ContainerAllocator1> & lhs, const ::mvp_msgs::Power_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.voltage == rhs.voltage &&
    lhs.current == rhs.current;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mvp_msgs::Power_<ContainerAllocator1> & lhs, const ::mvp_msgs::Power_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mvp_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mvp_msgs::Power_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mvp_msgs::Power_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mvp_msgs::Power_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mvp_msgs::Power_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mvp_msgs::Power_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mvp_msgs::Power_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mvp_msgs::Power_<ContainerAllocator> >
{
  static const char* value()
  {
    return "75c8e4b7132acff3b679451f5604f145";
  }

  static const char* value(const ::mvp_msgs::Power_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x75c8e4b7132acff3ULL;
  static const uint64_t static_value2 = 0xb679451f5604f145ULL;
};

template<class ContainerAllocator>
struct DataType< ::mvp_msgs::Power_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mvp_msgs/Power";
  }

  static const char* value(const ::mvp_msgs::Power_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mvp_msgs::Power_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
"#   This file is part of MVP-Mission program.\n"
"#\n"
"#   MVP-Mission is free software: you can redistribute it and/or modify\n"
"#   it under the terms of the GNU General Public License as published by\n"
"#   the Free Software Foundation, either version 3 of the License, or\n"
"#   (at your option) any later version.\n"
"#\n"
"#   MVP-Mission is distributed in the hope that it will be useful,\n"
"#   but WITHOUT ANY WARRANTY; without even the implied warranty of\n"
"#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\n"
"#   GNU General Public License for more details.\n"
"#\n"
"#   You should have received a copy of the GNU General Public License\n"
"#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.\n"
"#\n"
"#   Author: Emir Cem Gezer\n"
"#   Email: emircem@uri.edu;emircem.gezer@gmail.com\n"
"#   Year: 2022\n"
"#\n"
"#   Copyright (C) 2022 Smart Ocean Systems Laboratory\n"
"#\n"
"\n"
"std_msgs/Header header\n"
"float32 voltage\n"
"float32 current\n"
"\n"
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

  static const char* value(const ::mvp_msgs::Power_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mvp_msgs::Power_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.voltage);
      stream.next(m.current);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Power_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mvp_msgs::Power_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mvp_msgs::Power_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "voltage: ";
    Printer<float>::stream(s, indent + "  ", v.voltage);
    s << indent << "current: ";
    Printer<float>::stream(s, indent + "  ", v.current);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MVP_MSGS_MESSAGE_POWER_H
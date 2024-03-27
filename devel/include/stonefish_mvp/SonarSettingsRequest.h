// Generated by gencpp from file stonefish_mvp/SonarSettingsRequest.msg
// DO NOT EDIT!


#ifndef STONEFISH_MVP_MESSAGE_SONARSETTINGSREQUEST_H
#define STONEFISH_MVP_MESSAGE_SONARSETTINGSREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace stonefish_mvp
{
template <class ContainerAllocator>
struct SonarSettingsRequest_
{
  typedef SonarSettingsRequest_<ContainerAllocator> Type;

  SonarSettingsRequest_()
    : range_min(0.0)
    , range_max(0.0)
    , gain(0.0)  {
    }
  SonarSettingsRequest_(const ContainerAllocator& _alloc)
    : range_min(0.0)
    , range_max(0.0)
    , gain(0.0)  {
  (void)_alloc;
    }



   typedef double _range_min_type;
  _range_min_type range_min;

   typedef double _range_max_type;
  _range_max_type range_max;

   typedef double _gain_type;
  _gain_type gain;





  typedef boost::shared_ptr< ::stonefish_mvp::SonarSettingsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::stonefish_mvp::SonarSettingsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SonarSettingsRequest_

typedef ::stonefish_mvp::SonarSettingsRequest_<std::allocator<void> > SonarSettingsRequest;

typedef boost::shared_ptr< ::stonefish_mvp::SonarSettingsRequest > SonarSettingsRequestPtr;
typedef boost::shared_ptr< ::stonefish_mvp::SonarSettingsRequest const> SonarSettingsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::stonefish_mvp::SonarSettingsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::stonefish_mvp::SonarSettingsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::stonefish_mvp::SonarSettingsRequest_<ContainerAllocator1> & lhs, const ::stonefish_mvp::SonarSettingsRequest_<ContainerAllocator2> & rhs)
{
  return lhs.range_min == rhs.range_min &&
    lhs.range_max == rhs.range_max &&
    lhs.gain == rhs.gain;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::stonefish_mvp::SonarSettingsRequest_<ContainerAllocator1> & lhs, const ::stonefish_mvp::SonarSettingsRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace stonefish_mvp

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::stonefish_mvp::SonarSettingsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::stonefish_mvp::SonarSettingsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::stonefish_mvp::SonarSettingsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::stonefish_mvp::SonarSettingsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::stonefish_mvp::SonarSettingsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::stonefish_mvp::SonarSettingsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::stonefish_mvp::SonarSettingsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "90521fcdc7e2aa5a95f36812daa501f9";
  }

  static const char* value(const ::stonefish_mvp::SonarSettingsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x90521fcdc7e2aa5aULL;
  static const uint64_t static_value2 = 0x95f36812daa501f9ULL;
};

template<class ContainerAllocator>
struct DataType< ::stonefish_mvp::SonarSettingsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "stonefish_mvp/SonarSettingsRequest";
  }

  static const char* value(const ::stonefish_mvp::SonarSettingsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::stonefish_mvp::SonarSettingsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 range_min\n"
"float64 range_max\n"
"float64 gain\n"
;
  }

  static const char* value(const ::stonefish_mvp::SonarSettingsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::stonefish_mvp::SonarSettingsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.range_min);
      stream.next(m.range_max);
      stream.next(m.gain);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SonarSettingsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::stonefish_mvp::SonarSettingsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::stonefish_mvp::SonarSettingsRequest_<ContainerAllocator>& v)
  {
    s << indent << "range_min: ";
    Printer<double>::stream(s, indent + "  ", v.range_min);
    s << indent << "range_max: ";
    Printer<double>::stream(s, indent + "  ", v.range_max);
    s << indent << "gain: ";
    Printer<double>::stream(s, indent + "  ", v.gain);
  }
};

} // namespace message_operations
} // namespace ros

#endif // STONEFISH_MVP_MESSAGE_SONARSETTINGSREQUEST_H
// Generated by gencpp from file py_perception/FilterCloud.msg
// DO NOT EDIT!


#ifndef PY_PERCEPTION_MESSAGE_FILTERCLOUD_H
#define PY_PERCEPTION_MESSAGE_FILTERCLOUD_H

#include <ros/service_traits.h>


#include <py_perception/FilterCloudRequest.h>
#include <py_perception/FilterCloudResponse.h>


namespace py_perception
{

struct FilterCloud
{

typedef FilterCloudRequest Request;
typedef FilterCloudResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct FilterCloud
} // namespace py_perception


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::py_perception::FilterCloud > {
  static const char* value()
  {
    return "fd3345ee2c96cc0aaa2c0e2cbc5ba121";
  }

  static const char* value(const ::py_perception::FilterCloud&) { return value(); }
};

template<>
struct DataType< ::py_perception::FilterCloud > {
  static const char* value()
  {
    return "py_perception/FilterCloud";
  }

  static const char* value(const ::py_perception::FilterCloud&) { return value(); }
};


// service_traits::MD5Sum< ::py_perception::FilterCloudRequest> should match
// service_traits::MD5Sum< ::py_perception::FilterCloud >
template<>
struct MD5Sum< ::py_perception::FilterCloudRequest>
{
  static const char* value()
  {
    return MD5Sum< ::py_perception::FilterCloud >::value();
  }
  static const char* value(const ::py_perception::FilterCloudRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::py_perception::FilterCloudRequest> should match
// service_traits::DataType< ::py_perception::FilterCloud >
template<>
struct DataType< ::py_perception::FilterCloudRequest>
{
  static const char* value()
  {
    return DataType< ::py_perception::FilterCloud >::value();
  }
  static const char* value(const ::py_perception::FilterCloudRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::py_perception::FilterCloudResponse> should match
// service_traits::MD5Sum< ::py_perception::FilterCloud >
template<>
struct MD5Sum< ::py_perception::FilterCloudResponse>
{
  static const char* value()
  {
    return MD5Sum< ::py_perception::FilterCloud >::value();
  }
  static const char* value(const ::py_perception::FilterCloudResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::py_perception::FilterCloudResponse> should match
// service_traits::DataType< ::py_perception::FilterCloud >
template<>
struct DataType< ::py_perception::FilterCloudResponse>
{
  static const char* value()
  {
    return DataType< ::py_perception::FilterCloud >::value();
  }
  static const char* value(const ::py_perception::FilterCloudResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PY_PERCEPTION_MESSAGE_FILTERCLOUD_H
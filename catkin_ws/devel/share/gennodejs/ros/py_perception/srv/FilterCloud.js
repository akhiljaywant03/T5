// Auto-generated. Do not edit!

// (in-package py_perception.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class FilterCloudRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input_cloud = null;
      this.topic = null;
      this.pcdfilename = null;
      this.operation = null;
    }
    else {
      if (initObj.hasOwnProperty('input_cloud')) {
        this.input_cloud = initObj.input_cloud
      }
      else {
        this.input_cloud = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('topic')) {
        this.topic = initObj.topic
      }
      else {
        this.topic = '';
      }
      if (initObj.hasOwnProperty('pcdfilename')) {
        this.pcdfilename = initObj.pcdfilename
      }
      else {
        this.pcdfilename = '';
      }
      if (initObj.hasOwnProperty('operation')) {
        this.operation = initObj.operation
      }
      else {
        this.operation = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FilterCloudRequest
    // Serialize message field [input_cloud]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.input_cloud, buffer, bufferOffset);
    // Serialize message field [topic]
    bufferOffset = _serializer.string(obj.topic, buffer, bufferOffset);
    // Serialize message field [pcdfilename]
    bufferOffset = _serializer.string(obj.pcdfilename, buffer, bufferOffset);
    // Serialize message field [operation]
    bufferOffset = _serializer.byte(obj.operation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FilterCloudRequest
    let len;
    let data = new FilterCloudRequest(null);
    // Deserialize message field [input_cloud]
    data.input_cloud = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [topic]
    data.topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pcdfilename]
    data.pcdfilename = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [operation]
    data.operation = _deserializer.byte(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.input_cloud);
    length += object.topic.length;
    length += object.pcdfilename.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'py_perception/FilterCloudRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad4d28c90b14c44e0a78e17b92ebb1e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    sensor_msgs/PointCloud2 input_cloud
    string topic
    #if empty, use data present in input_cloud
    string pcdfilename
    
    # Removes objects outside a defined grid pattern x,y,z
    byte VOXELGRID=0
    
    # Removes the objects based on volume of space
    byte PASSTHROUGH=1
    
    # Issolate objects located along the largest flat surface (floor)
    byte PLANESEGMENTATION=2
    
    # Determine clusters based on pcd density to identify multiple objects
    byte CLUSTEREXTRACTION=3
    
    # Operation to be performed
    byte operation
    
    
    ================================================================================
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FilterCloudRequest(null);
    if (msg.input_cloud !== undefined) {
      resolved.input_cloud = sensor_msgs.msg.PointCloud2.Resolve(msg.input_cloud)
    }
    else {
      resolved.input_cloud = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.topic !== undefined) {
      resolved.topic = msg.topic;
    }
    else {
      resolved.topic = ''
    }

    if (msg.pcdfilename !== undefined) {
      resolved.pcdfilename = msg.pcdfilename;
    }
    else {
      resolved.pcdfilename = ''
    }

    if (msg.operation !== undefined) {
      resolved.operation = msg.operation;
    }
    else {
      resolved.operation = 0
    }

    return resolved;
    }
};

// Constants for message
FilterCloudRequest.Constants = {
  VOXELGRID: 0,
  PASSTHROUGH: 1,
  PLANESEGMENTATION: 2,
  CLUSTEREXTRACTION: 3,
}

class FilterCloudResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.output_cloud = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('output_cloud')) {
        this.output_cloud = initObj.output_cloud
      }
      else {
        this.output_cloud = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FilterCloudResponse
    // Serialize message field [output_cloud]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.output_cloud, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FilterCloudResponse
    let len;
    let data = new FilterCloudResponse(null);
    // Deserialize message field [output_cloud]
    data.output_cloud = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.output_cloud);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'py_perception/FilterCloudResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0699e7be0f1e709ec082078209146fc6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #response
    sensor_msgs/PointCloud2 output_cloud
    bool success
    
    
    ================================================================================
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FilterCloudResponse(null);
    if (msg.output_cloud !== undefined) {
      resolved.output_cloud = sensor_msgs.msg.PointCloud2.Resolve(msg.output_cloud)
    }
    else {
      resolved.output_cloud = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: FilterCloudRequest,
  Response: FilterCloudResponse,
  md5sum() { return 'fd3345ee2c96cc0aaa2c0e2cbc5ba121'; },
  datatype() { return 'py_perception/FilterCloud'; }
};

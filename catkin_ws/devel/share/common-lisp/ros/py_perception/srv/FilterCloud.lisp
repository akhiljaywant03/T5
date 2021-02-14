; Auto-generated. Do not edit!


(cl:in-package py_perception-srv)


;//! \htmlinclude FilterCloud-request.msg.html

(cl:defclass <FilterCloud-request> (roslisp-msg-protocol:ros-message)
  ((input_cloud
    :reader input_cloud
    :initarg :input_cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform "")
   (pcdfilename
    :reader pcdfilename
    :initarg :pcdfilename
    :type cl:string
    :initform "")
   (operation
    :reader operation
    :initarg :operation
    :type cl:integer
    :initform 0))
)

(cl:defclass FilterCloud-request (<FilterCloud-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FilterCloud-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FilterCloud-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name py_perception-srv:<FilterCloud-request> is deprecated: use py_perception-srv:FilterCloud-request instead.")))

(cl:ensure-generic-function 'input_cloud-val :lambda-list '(m))
(cl:defmethod input_cloud-val ((m <FilterCloud-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_perception-srv:input_cloud-val is deprecated.  Use py_perception-srv:input_cloud instead.")
  (input_cloud m))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <FilterCloud-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_perception-srv:topic-val is deprecated.  Use py_perception-srv:topic instead.")
  (topic m))

(cl:ensure-generic-function 'pcdfilename-val :lambda-list '(m))
(cl:defmethod pcdfilename-val ((m <FilterCloud-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_perception-srv:pcdfilename-val is deprecated.  Use py_perception-srv:pcdfilename instead.")
  (pcdfilename m))

(cl:ensure-generic-function 'operation-val :lambda-list '(m))
(cl:defmethod operation-val ((m <FilterCloud-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_perception-srv:operation-val is deprecated.  Use py_perception-srv:operation instead.")
  (operation m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FilterCloud-request>)))
    "Constants for message type '<FilterCloud-request>"
  '((:VOXELGRID . 0)
    (:PASSTHROUGH . 1)
    (:PLANESEGMENTATION . 2)
    (:CLUSTEREXTRACTION . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FilterCloud-request)))
    "Constants for message type 'FilterCloud-request"
  '((:VOXELGRID . 0)
    (:PASSTHROUGH . 1)
    (:PLANESEGMENTATION . 2)
    (:CLUSTEREXTRACTION . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FilterCloud-request>) ostream)
  "Serializes a message object of type '<FilterCloud-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'input_cloud) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pcdfilename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pcdfilename))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'operation)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FilterCloud-request>) istream)
  "Deserializes a message object of type '<FilterCloud-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'input_cloud) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pcdfilename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pcdfilename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'operation)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FilterCloud-request>)))
  "Returns string type for a service object of type '<FilterCloud-request>"
  "py_perception/FilterCloudRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FilterCloud-request)))
  "Returns string type for a service object of type 'FilterCloud-request"
  "py_perception/FilterCloudRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FilterCloud-request>)))
  "Returns md5sum for a message object of type '<FilterCloud-request>"
  "fd3345ee2c96cc0aaa2c0e2cbc5ba121")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FilterCloud-request)))
  "Returns md5sum for a message object of type 'FilterCloud-request"
  "fd3345ee2c96cc0aaa2c0e2cbc5ba121")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FilterCloud-request>)))
  "Returns full string definition for message of type '<FilterCloud-request>"
  (cl:format cl:nil "#request~%sensor_msgs/PointCloud2 input_cloud~%string topic~%#if empty, use data present in input_cloud~%string pcdfilename~%~%# Removes objects outside a defined grid pattern x,y,z~%byte VOXELGRID=0~%~%# Removes the objects based on volume of space~%byte PASSTHROUGH=1~%~%# Issolate objects located along the largest flat surface (floor)~%byte PLANESEGMENTATION=2~%~%# Determine clusters based on pcd density to identify multiple objects~%byte CLUSTEREXTRACTION=3~%~%# Operation to be performed~%byte operation~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FilterCloud-request)))
  "Returns full string definition for message of type 'FilterCloud-request"
  (cl:format cl:nil "#request~%sensor_msgs/PointCloud2 input_cloud~%string topic~%#if empty, use data present in input_cloud~%string pcdfilename~%~%# Removes objects outside a defined grid pattern x,y,z~%byte VOXELGRID=0~%~%# Removes the objects based on volume of space~%byte PASSTHROUGH=1~%~%# Issolate objects located along the largest flat surface (floor)~%byte PLANESEGMENTATION=2~%~%# Determine clusters based on pcd density to identify multiple objects~%byte CLUSTEREXTRACTION=3~%~%# Operation to be performed~%byte operation~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FilterCloud-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'input_cloud))
     4 (cl:length (cl:slot-value msg 'topic))
     4 (cl:length (cl:slot-value msg 'pcdfilename))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FilterCloud-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FilterCloud-request
    (cl:cons ':input_cloud (input_cloud msg))
    (cl:cons ':topic (topic msg))
    (cl:cons ':pcdfilename (pcdfilename msg))
    (cl:cons ':operation (operation msg))
))
;//! \htmlinclude FilterCloud-response.msg.html

(cl:defclass <FilterCloud-response> (roslisp-msg-protocol:ros-message)
  ((output_cloud
    :reader output_cloud
    :initarg :output_cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass FilterCloud-response (<FilterCloud-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FilterCloud-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FilterCloud-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name py_perception-srv:<FilterCloud-response> is deprecated: use py_perception-srv:FilterCloud-response instead.")))

(cl:ensure-generic-function 'output_cloud-val :lambda-list '(m))
(cl:defmethod output_cloud-val ((m <FilterCloud-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_perception-srv:output_cloud-val is deprecated.  Use py_perception-srv:output_cloud instead.")
  (output_cloud m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <FilterCloud-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_perception-srv:success-val is deprecated.  Use py_perception-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FilterCloud-response>) ostream)
  "Serializes a message object of type '<FilterCloud-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'output_cloud) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FilterCloud-response>) istream)
  "Deserializes a message object of type '<FilterCloud-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'output_cloud) istream)
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FilterCloud-response>)))
  "Returns string type for a service object of type '<FilterCloud-response>"
  "py_perception/FilterCloudResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FilterCloud-response)))
  "Returns string type for a service object of type 'FilterCloud-response"
  "py_perception/FilterCloudResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FilterCloud-response>)))
  "Returns md5sum for a message object of type '<FilterCloud-response>"
  "fd3345ee2c96cc0aaa2c0e2cbc5ba121")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FilterCloud-response)))
  "Returns md5sum for a message object of type 'FilterCloud-response"
  "fd3345ee2c96cc0aaa2c0e2cbc5ba121")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FilterCloud-response>)))
  "Returns full string definition for message of type '<FilterCloud-response>"
  (cl:format cl:nil "#response~%sensor_msgs/PointCloud2 output_cloud~%bool success~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FilterCloud-response)))
  "Returns full string definition for message of type 'FilterCloud-response"
  (cl:format cl:nil "#response~%sensor_msgs/PointCloud2 output_cloud~%bool success~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FilterCloud-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'output_cloud))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FilterCloud-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FilterCloud-response
    (cl:cons ':output_cloud (output_cloud msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FilterCloud)))
  'FilterCloud-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FilterCloud)))
  'FilterCloud-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FilterCloud)))
  "Returns string type for a service object of type '<FilterCloud>"
  "py_perception/FilterCloud")
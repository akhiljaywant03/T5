;; Auto-generated. Do not edit!


(when (boundp 'py_perception::FilterCloud)
  (if (not (find-package "PY_PERCEPTION"))
    (make-package "PY_PERCEPTION"))
  (shadow 'FilterCloud (find-package "PY_PERCEPTION")))
(unless (find-package "PY_PERCEPTION::FILTERCLOUD")
  (make-package "PY_PERCEPTION::FILTERCLOUD"))
(unless (find-package "PY_PERCEPTION::FILTERCLOUDREQUEST")
  (make-package "PY_PERCEPTION::FILTERCLOUDREQUEST"))
(unless (find-package "PY_PERCEPTION::FILTERCLOUDRESPONSE")
  (make-package "PY_PERCEPTION::FILTERCLOUDRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(intern "*VOXELGRID*" (find-package "PY_PERCEPTION::FILTERCLOUDREQUEST"))
(shadow '*VOXELGRID* (find-package "PY_PERCEPTION::FILTERCLOUDREQUEST"))
(defconstant py_perception::FilterCloudRequest::*VOXELGRID* 0)
(intern "*PASSTHROUGH*" (find-package "PY_PERCEPTION::FILTERCLOUDREQUEST"))
(shadow '*PASSTHROUGH* (find-package "PY_PERCEPTION::FILTERCLOUDREQUEST"))
(defconstant py_perception::FilterCloudRequest::*PASSTHROUGH* 1)
(intern "*PLANESEGMENTATION*" (find-package "PY_PERCEPTION::FILTERCLOUDREQUEST"))
(shadow '*PLANESEGMENTATION* (find-package "PY_PERCEPTION::FILTERCLOUDREQUEST"))
(defconstant py_perception::FilterCloudRequest::*PLANESEGMENTATION* 2)
(intern "*CLUSTEREXTRACTION*" (find-package "PY_PERCEPTION::FILTERCLOUDREQUEST"))
(shadow '*CLUSTEREXTRACTION* (find-package "PY_PERCEPTION::FILTERCLOUDREQUEST"))
(defconstant py_perception::FilterCloudRequest::*CLUSTEREXTRACTION* 3)
(defclass py_perception::FilterCloudRequest
  :super ros::object
  :slots (_input_cloud _topic _pcdfilename _operation ))

(defmethod py_perception::FilterCloudRequest
  (:init
   (&key
    ((:input_cloud __input_cloud) (instance sensor_msgs::PointCloud2 :init))
    ((:topic __topic) "")
    ((:pcdfilename __pcdfilename) "")
    ((:operation __operation) 0)
    )
   (send-super :init)
   (setq _input_cloud __input_cloud)
   (setq _topic (string __topic))
   (setq _pcdfilename (string __pcdfilename))
   (setq _operation (round __operation))
   self)
  (:input_cloud
   (&rest __input_cloud)
   (if (keywordp (car __input_cloud))
       (send* _input_cloud __input_cloud)
     (progn
       (if __input_cloud (setq _input_cloud (car __input_cloud)))
       _input_cloud)))
  (:topic
   (&optional __topic)
   (if __topic (setq _topic __topic)) _topic)
  (:pcdfilename
   (&optional __pcdfilename)
   (if __pcdfilename (setq _pcdfilename __pcdfilename)) _pcdfilename)
  (:operation
   (&optional __operation)
   (if __operation (setq _operation __operation)) _operation)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _input_cloud
    (send _input_cloud :serialization-length)
    ;; string _topic
    4 (length _topic)
    ;; string _pcdfilename
    4 (length _pcdfilename)
    ;; byte _operation
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _input_cloud
       (send _input_cloud :serialize s)
     ;; string _topic
       (write-long (length _topic) s) (princ _topic s)
     ;; string _pcdfilename
       (write-long (length _pcdfilename) s) (princ _pcdfilename s)
     ;; byte _operation
       (write-byte _operation s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _input_cloud
     (send _input_cloud :deserialize buf ptr-) (incf ptr- (send _input_cloud :serialization-length))
   ;; string _topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _pcdfilename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pcdfilename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; byte _operation
     (setq _operation (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _operation 127) (setq _operation (- _operation 256)))
   ;;
   self)
  )

(defclass py_perception::FilterCloudResponse
  :super ros::object
  :slots (_output_cloud _success ))

(defmethod py_perception::FilterCloudResponse
  (:init
   (&key
    ((:output_cloud __output_cloud) (instance sensor_msgs::PointCloud2 :init))
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _output_cloud __output_cloud)
   (setq _success __success)
   self)
  (:output_cloud
   (&rest __output_cloud)
   (if (keywordp (car __output_cloud))
       (send* _output_cloud __output_cloud)
     (progn
       (if __output_cloud (setq _output_cloud (car __output_cloud)))
       _output_cloud)))
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _output_cloud
    (send _output_cloud :serialization-length)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _output_cloud
       (send _output_cloud :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _output_cloud
     (send _output_cloud :deserialize buf ptr-) (incf ptr- (send _output_cloud :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass py_perception::FilterCloud
  :super ros::object
  :slots ())

(setf (get py_perception::FilterCloud :md5sum-) "fd3345ee2c96cc0aaa2c0e2cbc5ba121")
(setf (get py_perception::FilterCloud :datatype-) "py_perception/FilterCloud")
(setf (get py_perception::FilterCloud :request) py_perception::FilterCloudRequest)
(setf (get py_perception::FilterCloud :response) py_perception::FilterCloudResponse)

(defmethod py_perception::FilterCloudRequest
  (:response () (instance py_perception::FilterCloudResponse :init)))

(setf (get py_perception::FilterCloudRequest :md5sum-) "fd3345ee2c96cc0aaa2c0e2cbc5ba121")
(setf (get py_perception::FilterCloudRequest :datatype-) "py_perception/FilterCloudRequest")
(setf (get py_perception::FilterCloudRequest :definition-)
      "#request
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
# contents of the \"fields\" array.

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
---
#response
sensor_msgs/PointCloud2 output_cloud
bool success


================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

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
")

(setf (get py_perception::FilterCloudResponse :md5sum-) "fd3345ee2c96cc0aaa2c0e2cbc5ba121")
(setf (get py_perception::FilterCloudResponse :datatype-) "py_perception/FilterCloudResponse")
(setf (get py_perception::FilterCloudResponse :definition-)
      "#request
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
# contents of the \"fields\" array.

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
---
#response
sensor_msgs/PointCloud2 output_cloud
bool success


================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

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
")



(provide :py_perception/FilterCloud "fd3345ee2c96cc0aaa2c0e2cbc5ba121")



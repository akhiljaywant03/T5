# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "py_perception: 0 messages, 1 services")

set(MSG_I_FLAGS "-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Ivisualization_msgs:/opt/ros/melodic/share/visualization_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(py_perception_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/akhiljaywant/catkin_ws/src/py_perception/srv/FilterCloud.srv" NAME_WE)
add_custom_target(_py_perception_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "py_perception" "/home/akhiljaywant/catkin_ws/src/py_perception/srv/FilterCloud.srv" "sensor_msgs/PointCloud2:sensor_msgs/PointField:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(py_perception
  "/home/akhiljaywant/catkin_ws/src/py_perception/srv/FilterCloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/py_perception
)

### Generating Module File
_generate_module_cpp(py_perception
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/py_perception
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(py_perception_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(py_perception_generate_messages py_perception_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akhiljaywant/catkin_ws/src/py_perception/srv/FilterCloud.srv" NAME_WE)
add_dependencies(py_perception_generate_messages_cpp _py_perception_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(py_perception_gencpp)
add_dependencies(py_perception_gencpp py_perception_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS py_perception_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(py_perception
  "/home/akhiljaywant/catkin_ws/src/py_perception/srv/FilterCloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/py_perception
)

### Generating Module File
_generate_module_eus(py_perception
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/py_perception
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(py_perception_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(py_perception_generate_messages py_perception_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akhiljaywant/catkin_ws/src/py_perception/srv/FilterCloud.srv" NAME_WE)
add_dependencies(py_perception_generate_messages_eus _py_perception_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(py_perception_geneus)
add_dependencies(py_perception_geneus py_perception_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS py_perception_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(py_perception
  "/home/akhiljaywant/catkin_ws/src/py_perception/srv/FilterCloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/py_perception
)

### Generating Module File
_generate_module_lisp(py_perception
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/py_perception
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(py_perception_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(py_perception_generate_messages py_perception_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akhiljaywant/catkin_ws/src/py_perception/srv/FilterCloud.srv" NAME_WE)
add_dependencies(py_perception_generate_messages_lisp _py_perception_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(py_perception_genlisp)
add_dependencies(py_perception_genlisp py_perception_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS py_perception_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(py_perception
  "/home/akhiljaywant/catkin_ws/src/py_perception/srv/FilterCloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/py_perception
)

### Generating Module File
_generate_module_nodejs(py_perception
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/py_perception
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(py_perception_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(py_perception_generate_messages py_perception_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akhiljaywant/catkin_ws/src/py_perception/srv/FilterCloud.srv" NAME_WE)
add_dependencies(py_perception_generate_messages_nodejs _py_perception_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(py_perception_gennodejs)
add_dependencies(py_perception_gennodejs py_perception_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS py_perception_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(py_perception
  "/home/akhiljaywant/catkin_ws/src/py_perception/srv/FilterCloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/py_perception
)

### Generating Module File
_generate_module_py(py_perception
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/py_perception
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(py_perception_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(py_perception_generate_messages py_perception_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akhiljaywant/catkin_ws/src/py_perception/srv/FilterCloud.srv" NAME_WE)
add_dependencies(py_perception_generate_messages_py _py_perception_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(py_perception_genpy)
add_dependencies(py_perception_genpy py_perception_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS py_perception_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/py_perception)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/py_perception
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(py_perception_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(py_perception_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/py_perception)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/py_perception
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(py_perception_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(py_perception_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/py_perception)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/py_perception
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(py_perception_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(py_perception_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/py_perception)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/py_perception
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(py_perception_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(py_perception_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/py_perception)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/py_perception\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/py_perception
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(py_perception_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(py_perception_generate_messages_py visualization_msgs_generate_messages_py)
endif()

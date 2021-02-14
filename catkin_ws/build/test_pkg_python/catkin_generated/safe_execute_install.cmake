execute_process(COMMAND "/home/akhiljaywant/catkin_ws/build/test_pkg_python/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/akhiljaywant/catkin_ws/build/test_pkg_python/catkin_generated/python_distutils_install.sh) returned error code ")
endif()

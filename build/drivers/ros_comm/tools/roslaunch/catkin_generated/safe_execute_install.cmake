execute_process(COMMAND "/home/cartermarcelo/ros-workspace/build/drivers/ros_comm/tools/roslaunch/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/cartermarcelo/ros-workspace/build/drivers/ros_comm/tools/roslaunch/catkin_generated/python_distutils_install.sh) returned error code ")
endif()

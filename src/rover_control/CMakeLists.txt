cmake_minimum_required(VERSION 3.0.2)
project(rover_control)
add_compile_options(-std=c++17)
find_package(catkin REQUIRED COMPONENTS
        rospy
        roscpp
        )
#catkin_python_setup()
catkin_package()
include_directories(${catkin_INCLUDE_DIRS})
catkin_install_python(PROGRAMS scripts/control.py scripts/drive.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

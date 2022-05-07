cmake_minimum_required(VERSION 3.0.2)
project(prototype)
add_compile_options(-std=c++17)
find_package(catkin REQUIRED COMPONENTS
        rospy
        roscpp
        )
#catkin_python_setup()
catkin_package()
include_directories(${catkin_INCLUDE_DIRS})

catkin_install_python(PROGRAMS scripts/subscriber.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

catkin_install_python(PROGRAMS scripts/talker.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

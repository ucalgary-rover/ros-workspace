cmake_minimum_required(VERSION 3.0.2)
project(rover_control)
add_compile_options(-std=c++11)
find_package(catkin REQUIRED COMPONENTS 
  rospy 
  roscpp 
  std_msgs
  sensor_msgs
  message_generation
)
#add all message files in the msg folder
add_message_files(
  FILES
  Drive.msg
)
# add all service files in the srv folder
# add_service_files(
#  FILES
#  Service1.srv  
# )
#add all action files in the action folder
###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if your package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also needg

generate_messages(
  DEPENDENCIES
  std_msgs
  sensor_msgs
)
catkin_package(
  INCLUDE_DIRS include
  ##LIBRARIES tutorials
  CATKIN_DEPENDS message_runtime roscpp rospy std_msgs sensor_msgs
#  DEPENDS system_lib
)
###########
## Build ##
###########
#TO DO: Finish adding lightweight drive message to package and drive.cpp file

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)
## Declare a C++ library
# add_library(${PROJECT_NAME}
#   src/${PROJECT_NAME}/tutorials.cpp
# )

## Declare a C++ executable
## With catkin_make all packages are built within a single CMake context
## The recommended prefix ensures that target names across packages don't collide
## Only call "add_executable"
add_executable(drive_node scripts/drive.cpp)
target_link_libraries(drive_node ${catkin_LIBRARIES})

add_executable(teleop_node scripts/control.cpp)
target_link_libraries(teleop_node ${catkin_LIBRARIES})

include_directories(${catkin_INCLUDE_DIRS})
catkin_install_python(PROGRAMS scripts/control.py scripts/drive.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

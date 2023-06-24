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
# Add all message files in the msg folder
add_message_files(
  FILES
  Drive.msg
  Spatial.msg
)

# Add all service files in the srv folder
# add_service_files(
#   FILES
#   Service1.srv  
# )

# Add all action files in the action folder

###################################
## catkin specific configuration ##
###################################

## Generate message files
generate_messages(
  DEPENDENCIES
  std_msgs
  sensor_msgs
)

## Declare package dependencies and export package information
catkin_package(
  INCLUDE_DIRS include include/controllers include/motors include/exceptions /usr/local/lib
  CATKIN_DEPENDS message_runtime roscpp rospy std_msgs sensor_msgs libphidget22
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

## Declare C++ executables
## This line below sets environment variables we can use later on
##
set (EXCEPTION_SOURCES scripts/exceptions/RuntimeException.cpp scripts/exceptions/DCMotorException.cpp)
set(TELEOP_SOURCES scripts/controllers/TeleopNode.cpp scripts/main_files/TeleopMain.cpp)
set(DRIVE_SOURCES scripts/motors/DCMotor.cpp scripts/main_files/DriveNode.cpp)
add_executable(drive_node ${DRIVE_SOURCES} ${EXCEPTION_SOURCES})
## To link external libraries, you need to do two things:
## Add the -l flag to specify the library file to link against, but exclude the "lib" part
## Instead, write -lquxx
## To link "my_executable" against the external library "libexample.so":
## It will look like: target_link_libraries(my_executable ${catkin_LIBRARIES} -L/path/to/lib -lexample)
target_link_libraries(drive_node ${catkin_LIBRARIES} -L/usr/local/lib -lphidget22)

add_executable(teleop_node ${TELEOP_SOURCES} ${EXCEPTION_SOURCES})
target_link_libraries(teleop_node ${catkin_LIBRARIES})

## Install Python scripts
catkin_install_python(PROGRAMS scripts/control.py scripts/drive.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

## Install CMake config file
install(
  FILES rover_controlConfig.cmake
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/cmake
)

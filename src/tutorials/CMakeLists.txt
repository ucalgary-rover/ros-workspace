cmake_minimum_required(VERSION 3.0.2)
project(tutorials)

## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs)
#this line (above) is where you'd add additional dependencies

###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if your package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES tutorials
#  CATKIN_DEPENDS roscpp rospy std_msgs
#  DEPENDS system_lib
)
###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)
## Declare a C++ library
# add_library(${PROJECT_NAME}
#   src/${PROJECT_NAME}/tutorials.cpp
# )

## Declare a C++ executable
## With catkin_make all packages are built within a single CMake context
## The recommended prefix ensures that target names across packages don't collide

add_executable(${PROJECT_NAME}_talker src/talker.cpp) #this is like in MakeFiles -> -o flag
target_link_libraries(${PROJECT_NAME}_talker ${catkin_LIBRARIES})
#add_depencencies() is only needed if you're using custom messages
#best not to mess with those for now...

add_executable(${PROJECT_NAME}_listener src/listener.cpp)
target_link_libraries(${PROJECT_NAME}_listener ${catkin_LIBRARIES})





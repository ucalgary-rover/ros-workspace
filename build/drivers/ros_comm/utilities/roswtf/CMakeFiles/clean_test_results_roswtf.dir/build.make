# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cartermarcelo/ros-workspace/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cartermarcelo/ros-workspace/build

# Utility rule file for clean_test_results_roswtf.

# Include the progress variables for this target.
include drivers/ros_comm/utilities/roswtf/CMakeFiles/clean_test_results_roswtf.dir/progress.make

drivers/ros_comm/utilities/roswtf/CMakeFiles/clean_test_results_roswtf:
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/roswtf && /usr/bin/python2 /opt/ros/melodic/share/catkin/cmake/test/remove_test_results.py /home/cartermarcelo/ros-workspace/build/test_results/roswtf

clean_test_results_roswtf: drivers/ros_comm/utilities/roswtf/CMakeFiles/clean_test_results_roswtf
clean_test_results_roswtf: drivers/ros_comm/utilities/roswtf/CMakeFiles/clean_test_results_roswtf.dir/build.make

.PHONY : clean_test_results_roswtf

# Rule to build all files generated by this target.
drivers/ros_comm/utilities/roswtf/CMakeFiles/clean_test_results_roswtf.dir/build: clean_test_results_roswtf

.PHONY : drivers/ros_comm/utilities/roswtf/CMakeFiles/clean_test_results_roswtf.dir/build

drivers/ros_comm/utilities/roswtf/CMakeFiles/clean_test_results_roswtf.dir/clean:
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/roswtf && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_roswtf.dir/cmake_clean.cmake
.PHONY : drivers/ros_comm/utilities/roswtf/CMakeFiles/clean_test_results_roswtf.dir/clean

drivers/ros_comm/utilities/roswtf/CMakeFiles/clean_test_results_roswtf.dir/depend:
	cd /home/cartermarcelo/ros-workspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cartermarcelo/ros-workspace/src /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/roswtf /home/cartermarcelo/ros-workspace/build /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/roswtf /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/roswtf/CMakeFiles/clean_test_results_roswtf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : drivers/ros_comm/utilities/roswtf/CMakeFiles/clean_test_results_roswtf.dir/depend

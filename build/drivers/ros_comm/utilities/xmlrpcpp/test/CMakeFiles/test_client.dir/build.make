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

# Include any dependencies generated for this target.
include drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/depend.make

# Include the progress variables for this target.
include drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/progress.make

# Include the compile flags for this target's objects.
include drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/flags.make

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/test_client.cpp.o: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/flags.make
drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/test_client.cpp.o: /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/test/test_client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cartermarcelo/ros-workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/test_client.cpp.o"
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_client.dir/test_client.cpp.o -c /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/test/test_client.cpp

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/test_client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_client.dir/test_client.cpp.i"
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/test/test_client.cpp > CMakeFiles/test_client.dir/test_client.cpp.i

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/test_client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_client.dir/test_client.cpp.s"
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/test/test_client.cpp -o CMakeFiles/test_client.dir/test_client.cpp.s

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/test_client.cpp.o.requires:

.PHONY : drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/test_client.cpp.o.requires

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/test_client.cpp.o.provides: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/test_client.cpp.o.requires
	$(MAKE) -f drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/build.make drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/test_client.cpp.o.provides.build
.PHONY : drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/test_client.cpp.o.provides

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/test_client.cpp.o.provides.build: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/test_client.cpp.o


drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcClient.cpp.o: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/flags.make
drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcClient.cpp.o: /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/src/XmlRpcClient.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cartermarcelo/ros-workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcClient.cpp.o"
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_client.dir/__/src/XmlRpcClient.cpp.o -c /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/src/XmlRpcClient.cpp

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_client.dir/__/src/XmlRpcClient.cpp.i"
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/src/XmlRpcClient.cpp > CMakeFiles/test_client.dir/__/src/XmlRpcClient.cpp.i

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_client.dir/__/src/XmlRpcClient.cpp.s"
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/src/XmlRpcClient.cpp -o CMakeFiles/test_client.dir/__/src/XmlRpcClient.cpp.s

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcClient.cpp.o.requires:

.PHONY : drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcClient.cpp.o.requires

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcClient.cpp.o.provides: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcClient.cpp.o.requires
	$(MAKE) -f drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/build.make drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcClient.cpp.o.provides.build
.PHONY : drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcClient.cpp.o.provides

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcClient.cpp.o.provides.build: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcClient.cpp.o


drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcValue.cpp.o: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/flags.make
drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcValue.cpp.o: /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/src/XmlRpcValue.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cartermarcelo/ros-workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcValue.cpp.o"
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_client.dir/__/src/XmlRpcValue.cpp.o -c /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/src/XmlRpcValue.cpp

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcValue.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_client.dir/__/src/XmlRpcValue.cpp.i"
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/src/XmlRpcValue.cpp > CMakeFiles/test_client.dir/__/src/XmlRpcValue.cpp.i

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcValue.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_client.dir/__/src/XmlRpcValue.cpp.s"
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/src/XmlRpcValue.cpp -o CMakeFiles/test_client.dir/__/src/XmlRpcValue.cpp.s

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcValue.cpp.o.requires:

.PHONY : drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcValue.cpp.o.requires

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcValue.cpp.o.provides: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcValue.cpp.o.requires
	$(MAKE) -f drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/build.make drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcValue.cpp.o.provides.build
.PHONY : drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcValue.cpp.o.provides

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcValue.cpp.o.provides.build: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcValue.cpp.o


drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcUtil.cpp.o: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/flags.make
drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcUtil.cpp.o: /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/src/XmlRpcUtil.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cartermarcelo/ros-workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcUtil.cpp.o"
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_client.dir/__/src/XmlRpcUtil.cpp.o -c /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/src/XmlRpcUtil.cpp

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcUtil.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_client.dir/__/src/XmlRpcUtil.cpp.i"
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/src/XmlRpcUtil.cpp > CMakeFiles/test_client.dir/__/src/XmlRpcUtil.cpp.i

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcUtil.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_client.dir/__/src/XmlRpcUtil.cpp.s"
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/src/XmlRpcUtil.cpp -o CMakeFiles/test_client.dir/__/src/XmlRpcUtil.cpp.s

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcUtil.cpp.o.requires:

.PHONY : drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcUtil.cpp.o.requires

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcUtil.cpp.o.provides: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcUtil.cpp.o.requires
	$(MAKE) -f drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/build.make drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcUtil.cpp.o.provides.build
.PHONY : drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcUtil.cpp.o.provides

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcUtil.cpp.o.provides.build: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcUtil.cpp.o


drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcDispatch.cpp.o: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/flags.make
drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcDispatch.cpp.o: /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/src/XmlRpcDispatch.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cartermarcelo/ros-workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcDispatch.cpp.o"
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_client.dir/__/src/XmlRpcDispatch.cpp.o -c /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/src/XmlRpcDispatch.cpp

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcDispatch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_client.dir/__/src/XmlRpcDispatch.cpp.i"
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/src/XmlRpcDispatch.cpp > CMakeFiles/test_client.dir/__/src/XmlRpcDispatch.cpp.i

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcDispatch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_client.dir/__/src/XmlRpcDispatch.cpp.s"
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/src/XmlRpcDispatch.cpp -o CMakeFiles/test_client.dir/__/src/XmlRpcDispatch.cpp.s

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcDispatch.cpp.o.requires:

.PHONY : drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcDispatch.cpp.o.requires

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcDispatch.cpp.o.provides: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcDispatch.cpp.o.requires
	$(MAKE) -f drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/build.make drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcDispatch.cpp.o.provides.build
.PHONY : drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcDispatch.cpp.o.provides

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcDispatch.cpp.o.provides.build: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcDispatch.cpp.o


drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcSource.cpp.o: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/flags.make
drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcSource.cpp.o: /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/src/XmlRpcSource.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cartermarcelo/ros-workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcSource.cpp.o"
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_client.dir/__/src/XmlRpcSource.cpp.o -c /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/src/XmlRpcSource.cpp

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcSource.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_client.dir/__/src/XmlRpcSource.cpp.i"
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/src/XmlRpcSource.cpp > CMakeFiles/test_client.dir/__/src/XmlRpcSource.cpp.i

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcSource.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_client.dir/__/src/XmlRpcSource.cpp.s"
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/src/XmlRpcSource.cpp -o CMakeFiles/test_client.dir/__/src/XmlRpcSource.cpp.s

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcSource.cpp.o.requires:

.PHONY : drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcSource.cpp.o.requires

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcSource.cpp.o.provides: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcSource.cpp.o.requires
	$(MAKE) -f drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/build.make drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcSource.cpp.o.provides.build
.PHONY : drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcSource.cpp.o.provides

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcSource.cpp.o.provides.build: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcSource.cpp.o


drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cdecode.c.o: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/flags.make
drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cdecode.c.o: /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/libb64/src/cdecode.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cartermarcelo/ros-workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cdecode.c.o"
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test_client.dir/__/libb64/src/cdecode.c.o   -c /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/libb64/src/cdecode.c

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cdecode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_client.dir/__/libb64/src/cdecode.c.i"
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/libb64/src/cdecode.c > CMakeFiles/test_client.dir/__/libb64/src/cdecode.c.i

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cdecode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_client.dir/__/libb64/src/cdecode.c.s"
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/libb64/src/cdecode.c -o CMakeFiles/test_client.dir/__/libb64/src/cdecode.c.s

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cdecode.c.o.requires:

.PHONY : drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cdecode.c.o.requires

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cdecode.c.o.provides: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cdecode.c.o.requires
	$(MAKE) -f drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/build.make drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cdecode.c.o.provides.build
.PHONY : drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cdecode.c.o.provides

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cdecode.c.o.provides.build: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cdecode.c.o


drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cencode.c.o: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/flags.make
drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cencode.c.o: /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/libb64/src/cencode.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cartermarcelo/ros-workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cencode.c.o"
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test_client.dir/__/libb64/src/cencode.c.o   -c /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/libb64/src/cencode.c

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cencode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_client.dir/__/libb64/src/cencode.c.i"
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/libb64/src/cencode.c > CMakeFiles/test_client.dir/__/libb64/src/cencode.c.i

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cencode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_client.dir/__/libb64/src/cencode.c.s"
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/libb64/src/cencode.c -o CMakeFiles/test_client.dir/__/libb64/src/cencode.c.s

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cencode.c.o.requires:

.PHONY : drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cencode.c.o.requires

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cencode.c.o.provides: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cencode.c.o.requires
	$(MAKE) -f drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/build.make drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cencode.c.o.provides.build
.PHONY : drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cencode.c.o.provides

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cencode.c.o.provides.build: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cencode.c.o


# Object files for target test_client
test_client_OBJECTS = \
"CMakeFiles/test_client.dir/test_client.cpp.o" \
"CMakeFiles/test_client.dir/__/src/XmlRpcClient.cpp.o" \
"CMakeFiles/test_client.dir/__/src/XmlRpcValue.cpp.o" \
"CMakeFiles/test_client.dir/__/src/XmlRpcUtil.cpp.o" \
"CMakeFiles/test_client.dir/__/src/XmlRpcDispatch.cpp.o" \
"CMakeFiles/test_client.dir/__/src/XmlRpcSource.cpp.o" \
"CMakeFiles/test_client.dir/__/libb64/src/cdecode.c.o" \
"CMakeFiles/test_client.dir/__/libb64/src/cencode.c.o"

# External object files for target test_client
test_client_EXTERNAL_OBJECTS =

/home/cartermarcelo/ros-workspace/devel/lib/xmlrpcpp/test_client: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/test_client.cpp.o
/home/cartermarcelo/ros-workspace/devel/lib/xmlrpcpp/test_client: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcClient.cpp.o
/home/cartermarcelo/ros-workspace/devel/lib/xmlrpcpp/test_client: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcValue.cpp.o
/home/cartermarcelo/ros-workspace/devel/lib/xmlrpcpp/test_client: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcUtil.cpp.o
/home/cartermarcelo/ros-workspace/devel/lib/xmlrpcpp/test_client: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcDispatch.cpp.o
/home/cartermarcelo/ros-workspace/devel/lib/xmlrpcpp/test_client: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcSource.cpp.o
/home/cartermarcelo/ros-workspace/devel/lib/xmlrpcpp/test_client: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cdecode.c.o
/home/cartermarcelo/ros-workspace/devel/lib/xmlrpcpp/test_client: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cencode.c.o
/home/cartermarcelo/ros-workspace/devel/lib/xmlrpcpp/test_client: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/build.make
/home/cartermarcelo/ros-workspace/devel/lib/xmlrpcpp/test_client: /home/cartermarcelo/ros-workspace/devel/lib/libmock_socket.so
/home/cartermarcelo/ros-workspace/devel/lib/xmlrpcpp/test_client: /opt/ros/melodic/lib/librostime.so
/home/cartermarcelo/ros-workspace/devel/lib/xmlrpcpp/test_client: /opt/ros/melodic/lib/libcpp_common.so
/home/cartermarcelo/ros-workspace/devel/lib/xmlrpcpp/test_client: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/cartermarcelo/ros-workspace/devel/lib/xmlrpcpp/test_client: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/cartermarcelo/ros-workspace/devel/lib/xmlrpcpp/test_client: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/cartermarcelo/ros-workspace/devel/lib/xmlrpcpp/test_client: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/cartermarcelo/ros-workspace/devel/lib/xmlrpcpp/test_client: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/cartermarcelo/ros-workspace/devel/lib/xmlrpcpp/test_client: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/cartermarcelo/ros-workspace/devel/lib/xmlrpcpp/test_client: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/cartermarcelo/ros-workspace/devel/lib/xmlrpcpp/test_client: gtest/googlemock/gtest/libgtest.so
/home/cartermarcelo/ros-workspace/devel/lib/xmlrpcpp/test_client: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cartermarcelo/ros-workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable /home/cartermarcelo/ros-workspace/devel/lib/xmlrpcpp/test_client"
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/build: /home/cartermarcelo/ros-workspace/devel/lib/xmlrpcpp/test_client

.PHONY : drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/build

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/requires: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/test_client.cpp.o.requires
drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/requires: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcClient.cpp.o.requires
drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/requires: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcValue.cpp.o.requires
drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/requires: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcUtil.cpp.o.requires
drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/requires: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcDispatch.cpp.o.requires
drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/requires: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/src/XmlRpcSource.cpp.o.requires
drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/requires: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cdecode.c.o.requires
drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/requires: drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/__/libb64/src/cencode.c.o.requires

.PHONY : drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/requires

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/clean:
	cd /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test && $(CMAKE_COMMAND) -P CMakeFiles/test_client.dir/cmake_clean.cmake
.PHONY : drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/clean

drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/depend:
	cd /home/cartermarcelo/ros-workspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cartermarcelo/ros-workspace/src /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/utilities/xmlrpcpp/test /home/cartermarcelo/ros-workspace/build /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : drivers/ros_comm/utilities/xmlrpcpp/test/CMakeFiles/test_client.dir/depend


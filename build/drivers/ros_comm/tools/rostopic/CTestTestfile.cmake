# CMake generated Testfile for 
# Source directory: /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/tools/rostopic
# Build directory: /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/tools/rostopic
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_rostopic_rostest_test_rostopic.test "/home/cartermarcelo/ros-workspace/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/cartermarcelo/ros-workspace/build/test_results/rostopic/rostest-test_rostopic.xml" "--return-code" "/usr/bin/python2 /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/tools/rostest/scripts/rostest --pkgdir=/home/cartermarcelo/ros-workspace/src/drivers/ros_comm/tools/rostopic --package=rostopic --results-filename test_rostopic.xml --results-base-dir \"/home/cartermarcelo/ros-workspace/build/test_results\" /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/tools/rostopic/test/rostopic.test ")
add_test(_ctest_rostopic_nosetests_test.test_rostopic_command_line_offline.py "/home/cartermarcelo/ros-workspace/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/cartermarcelo/ros-workspace/build/test_results/rostopic/nosetests-test.test_rostopic_command_line_offline.py.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/cartermarcelo/ros-workspace/build/test_results/rostopic" "/usr/bin/nosetests-2.7 -P --process-timeout=60 /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/tools/rostopic/test/test_rostopic_command_line_offline.py --with-xunit --xunit-file=/home/cartermarcelo/ros-workspace/build/test_results/rostopic/nosetests-test.test_rostopic_command_line_offline.py.xml")

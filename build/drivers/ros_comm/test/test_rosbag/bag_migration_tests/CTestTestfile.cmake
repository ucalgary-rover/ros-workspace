# CMake generated Testfile for 
# Source directory: /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/test/test_rosbag/bag_migration_tests
# Build directory: /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/test/test_rosbag/bag_migration_tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_test_rosbag_nosetests_test.migrate_test.py "/home/cartermarcelo/ros-workspace/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/cartermarcelo/ros-workspace/build/test_results/test_rosbag/nosetests-test.migrate_test.py.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/cartermarcelo/ros-workspace/build/test_results/test_rosbag" "/usr/bin/nosetests-2.7 -P --process-timeout=60 /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/test/test_rosbag/test/migrate_test.py --with-xunit --xunit-file=/home/cartermarcelo/ros-workspace/build/test_results/test_rosbag/nosetests-test.migrate_test.py.xml")
add_test(_ctest_test_rosbag_rostest_test_random_record.xml "/home/cartermarcelo/ros-workspace/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/cartermarcelo/ros-workspace/build/test_results/test_rosbag/rostest-test_random_record.xml" "--return-code" "/usr/bin/python2 /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/tools/rostest/scripts/rostest --pkgdir=/home/cartermarcelo/ros-workspace/src/drivers/ros_comm/test/test_rosbag --package=test_rosbag --results-filename test_random_record.xml --results-base-dir \"/home/cartermarcelo/ros-workspace/build/test_results\" /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/test/test_rosbag/test/random_record.xml ")
add_test(_ctest_test_rosbag_rostest_test_random_play.xml "/home/cartermarcelo/ros-workspace/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/cartermarcelo/ros-workspace/build/test_results/test_rosbag/rostest-test_random_play.xml" "--return-code" "/usr/bin/python2 /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/tools/rostest/scripts/rostest --pkgdir=/home/cartermarcelo/ros-workspace/src/drivers/ros_comm/test/test_rosbag --package=test_rosbag --results-filename test_random_play.xml --results-base-dir \"/home/cartermarcelo/ros-workspace/build/test_results\" /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/test/test_rosbag/test/random_play.xml ")
add_test(_ctest_test_rosbag_rostest_test_random_play_sim.xml "/home/cartermarcelo/ros-workspace/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/cartermarcelo/ros-workspace/build/test_results/test_rosbag/rostest-test_random_play_sim.xml" "--return-code" "/usr/bin/python2 /home/cartermarcelo/ros-workspace/src/drivers/ros_comm/tools/rostest/scripts/rostest --pkgdir=/home/cartermarcelo/ros-workspace/src/drivers/ros_comm/test/test_rosbag --package=test_rosbag --results-filename test_random_play_sim.xml --results-base-dir \"/home/cartermarcelo/ros-workspace/build/test_results\" /home/cartermarcelo/ros-workspace/build/drivers/ros_comm/test/test_rosbag/test/random_play_sim.xml ")

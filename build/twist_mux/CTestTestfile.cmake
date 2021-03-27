# CMake generated Testfile for 
# Source directory: /home/artpark/ros_ws/kinova_ws/src/twist_mux
# Build directory: /home/artpark/ros_ws/kinova_ws/build/twist_mux
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_twist_mux_rostest_test_system.test "/home/artpark/ros_ws/kinova_ws/build/twist_mux/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/artpark/ros_ws/kinova_ws/build/twist_mux/test_results/twist_mux/rostest-test_system.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/artpark/ros_ws/kinova_ws/src/twist_mux --package=twist_mux --results-filename test_system.xml --results-base-dir \"/home/artpark/ros_ws/kinova_ws/build/twist_mux/test_results\" /home/artpark/ros_ws/kinova_ws/src/twist_mux/test/system.test ")
subdirs("gtest")

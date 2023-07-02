First-time setup terminal commands + installations
==================================================

<h2>System Installations</h2>
curl (sudo apt install curl)
git (sudo apt install git)
sudo apt-get install -y libssh-dev

<b>Phidgets Installation</b>
1) Type ``sudo -i`` in terminal to enter the root mode<space><space>
2) Run ``curl -fsSL https://www.phidgets.com/downloads/setup_linux | bash - &&\``</br>
    ``apt-get install -y libphidget22``</br><space><space>
3) Run ``pip3 install Phidget22 ``(Python 3 client) </br>
4) Run ``sudo apt-get install libphidget22-dev`` (C client, but is compatible with C++)</br>
<b> Note </b> For Phidgets C client, there are more installation steps to be done in order to set it up.</br>
See the README.txt file included in libphidget22-dev. See ``rover_control/CMakeLists.txt``for how to use it once installed.


<h2>ROS PACKAGE INSTALLATIONS:</h2>

```cmake ../src -DCMAKE_INSTALL_PREFIX=../install -DCATKIN_DEVEL_PREFIX=../devel```
  
<b>Perform the following command under catkin workspace, e.g. ros-workspace/ </b></br>

    source /opt/ros/noetic/setup.bash 
    catkin_make install
    
<b>These can be performed anywhere</b>

    sudo apt-get install -y ros-noetic-joy
    sudo apt install python3 rospy
    sudo apt-get install -y ros-noetic-rospy
    sudo apt-get install -y ros-noetic-xacro
    sudo apt install -y python3-roslaunch
    sudo apt-get install -y ros-noetic-gazebo-ros-pkgs ros-noetic-gazebo-ros-control
    sudo apt install -y ros-noetic-moveit
    sudo apt install -y ros-noetic-ublox
    sudo apt install ros-noetic-image-view 

<h2>RVIZ Installation:</h2>

    sudo apt-get install ros-noetic-rviz
    sudo apt-get install ros-noetic-gazebo-ros-pkgs ros-noetic-gazebo-ros-control
    sudo apt install ros-noetic-moveit
    sudo apt-get install ros-noetic-urdf
    sudo apt-get install ros-noetic-robot-state-publisher
    sudo apt-get install ros-noetic-robot-state-controller
    sudo apt-get install ros-noetic-joint-state-controller
    sudo apt-get install ros-noetic-joint-state-publisher
    sudo apt-get install ros-noetic-joint-trajectory-controller
    sudo apt-get install ros-noetic-position-controllers

[More information](https://www.youtube.com/watch?v=dQw4w9WgXcQ&ab)


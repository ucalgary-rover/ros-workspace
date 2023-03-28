#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/cartermarcelo/ros-workspace/src/drivers/ros_comm/tools/rosmsg"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/cartermarcelo/ros-workspace/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/cartermarcelo/ros-workspace/install/lib/python2.7/dist-packages:/home/cartermarcelo/ros-workspace/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/cartermarcelo/ros-workspace/build" \
    "/usr/bin/python2" \
    "/home/cartermarcelo/ros-workspace/src/drivers/ros_comm/tools/rosmsg/setup.py" \
     \
    build --build-base "/home/cartermarcelo/ros-workspace/build/drivers/ros_comm/tools/rosmsg" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/cartermarcelo/ros-workspace/install" --install-scripts="/home/cartermarcelo/ros-workspace/install/bin"

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

echo_and_run cd "/home/artpark/ros_ws/kinova_ws/src/kinova-ros/kinova_demo"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/artpark/ros_ws/kinova_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/artpark/ros_ws/kinova_ws/install/lib/python2.7/dist-packages:/home/artpark/ros_ws/kinova_ws/build/kinova_demo/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/artpark/ros_ws/kinova_ws/build/kinova_demo" \
    "/usr/bin/python2" \
    "/home/artpark/ros_ws/kinova_ws/src/kinova-ros/kinova_demo/setup.py" \
     \
    build --build-base "/home/artpark/ros_ws/kinova_ws/build/kinova_demo" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/artpark/ros_ws/kinova_ws/install" --install-scripts="/home/artpark/ros_ws/kinova_ws/install/bin"

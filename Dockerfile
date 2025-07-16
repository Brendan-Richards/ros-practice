ARG ROS_DISTRO=jazzy
FROM osrf/ros:${ROS_DISTRO}-desktop

RUN apt-get update && apt-get upgrade -y && apt-get install nano vim -y

RUN /bin/bash -c "echo 'source /opt/ros/${ROS_DISTRO}/setup.bash' >> ~/.bashrc"

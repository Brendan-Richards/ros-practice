ARG ROS_DISTRO=jazzy
FROM osrf/ros:${ROS_DISTRO}-desktop

RUN apt-get update && apt-get upgrade -y && apt-get install nano vim -y

RUN /bin/bash -c "echo 'source /opt/ros/${ROS_DISTRO}/setup.bash' >> ~/.bashrc"

ARG WORKSPACE_DIR=ros2_ws
RUN mkdir -p ~/${WORKSPACE_DIR}/src && cd ~/${WORKSPACE_DIR} && colcon build
RUN /bin/bash -c "source ~/${WORKSPACE_DIR}/install/setup.bash"

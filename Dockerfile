FROM osrf/ros:jazzy-desktop

RUN apt-get update && apt-get upgrade -y && apt-get install nano vim -y

RUN /bin/bash -c "echo 'source /opt/ros/jazzy/setup.bash' >> ~/.bashrc"

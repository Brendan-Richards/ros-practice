FROM osrf/ros:kilted-desktop

RUN apt-get update && apt-get install nano vim -y

RUN /bin/bash -c "echo 'source /opt/ros/kilted/setup.bash' >> ~/.bashrc"

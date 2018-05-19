FROM jenkins/jenkins:2.107.3

USER root

RUN apt-get update \
      && apt-get upgrade -y \
      && apt-get install -y sudo libltdl-dev libltdl7 \
      && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers



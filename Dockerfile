FROM jenkins/jenkins:lts

USER root

RUN apt-get update \
      && apt-get upgrade -y \
      && apt-get install -y libltdl-dev \
      && rm -rf /var/lib/apt/lists/*

RUN apt-get update \
    && apt-get install -y \
    libltdl7

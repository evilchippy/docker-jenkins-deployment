FROM jenkins/jenkins:lts

USER root

RUN apt-get update \
    && apt-get install --reinstall -y libltdl7

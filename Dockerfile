FROM jenkins/jenkins:lts

RUN sudo apt-get update \
    && sudo apt-get install -y apt-utils libltdl7

USER root



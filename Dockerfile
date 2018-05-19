FROM jenkins/jenkins:2.107.3

USER root

# Adding Docker to Jenkins container 
RUN apt-get -qq update \
&& apt-get -qq -y install --no-install-recommends \
    apt-transport-https \
    ca-certificates \
    libltdl.so.7 \
    curl \ 
    libltdl-dev \
    gnupg2 \
    software-properties-common && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
    apt-key fingerprint 0EBFCD88 && \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian stretch stable" && \
    apt-get update && \
    apt-get install -qq -y --no-install-recommends docker-ce && \
    curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*



# Adding user jenkins to docker group
usermod -a -G $(ls -la /var/run/docker.sock | awk '{ print $4 }') jenkins

# Change ownership of jenkins_home 
chown -R jenkins:jenkins /var/jenkins_home 

# Run standard jenkins startup script as jenkins
su -c /usr/local/bin/jenkins.sh jenkins

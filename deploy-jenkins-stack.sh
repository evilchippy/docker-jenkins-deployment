#!/bin/sh

DATE=$(date -I)

docker build . --no-cache -t evilchippy/jenkins_swarm:$DATE
docker tag evilchippy/jenkins:$DATE evilchippy/jenkins_swarm:lts 
docker tag evilchippy/jenkins:$DATE evilchippy/jenkins_swarm:latest

docker push evilchippy/jenkins_swarm:$DATE
docker push evilchippy/jenkins_swarm:latest
docker push evilchippy/jenkins_swarm:lts

docker stack rm jenkins
sleep 15

docker stack deploy -c "docker-compose.yml" jenkins

#!/bin/sh

DATE=$(date -I)

docker build . --no-cache -t evilchippy/jenkins:$DATE
docker tag evilchippy/jenkins:$DATE evilchippy/jenkins:lts 
docker tag evilchippy/jenkins:$DATE evilchippy/jenkins:latest

docker push evilchippy/jenkins:$DATE
docker push evilchippy/jenkins:latest
docker push evilchippy/jenkins:lts

docker stack rm jenkins
sleep 15

docker stack deploy -c docker-compose.yml jenkins

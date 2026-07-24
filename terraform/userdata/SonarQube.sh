#!/bin/bash
apt update && sudo apt upgrade -y
#install docker

apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update
apt install -y docker-ce
chmod 666 /var/run/docker.sock

systemctl enable docker
systemctl start docker

docker run -d --name sonar -p 9000:9000 sonarqube:lts-community

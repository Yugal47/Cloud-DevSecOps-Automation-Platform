sudo apt update && sudo apt upgrade -y
#install docker

sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y docker-ce
sudo chmod 666 /var/run/docker.sock

sudo systemctl enable docker
sudo systemctl start docker


docker run -d --name nexus -p 8081:8081 sonatype/nexus3:latest

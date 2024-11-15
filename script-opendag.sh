#!/bin/bash

sudo yum update -y

sudo yum install docker -y

# add group memebership for default user
sudo usermod -a -G docker ec2-user
id ec2-user
# Reload a Linux user's group assignments to docker w/o logout
newgrp docker


# Docker compose install
wget https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) 
sudo mv docker-compose-$(uname -s)-$(uname -m) /usr/local/bin/docker-compose
sudo chmod -v +x /usr/local/bin/docker-compose


# Automaticly start docker
sudo systemctl enable docker.service
sudo systemctl start docker.service


# install git
sudo yum install git -y

git config — global user.name “gebruiker”
git config — global user.email “gebruiker@example.com”

sudo mkdir ./git 
cd /git
git clone https://github.com/Bedrijfstak14/Open-Dag.git

# Deploy NPM:



# Deploy Stirling

cd /git/Open-Dag/strirling-pdf
docker compose up -d
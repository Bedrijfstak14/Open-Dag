#!/bin/bash

sudo yum update -y

sudo yum install docker -y

# add group memebership for default user
sudo usermod -a -G docker ec2-user
id ec2-user
# Reload a Linux user's group assignments to docker w/o logout
newgrp docker

# Docker compose install
# 1. Get pip3 
sudo yum install python3-pip -y
sudo pip3 install docker-compose -y

# Automaticly start docker
sudo systemctl enable docker.service
sudo systemctl start docker.service


# install git
sudo yum install git -y

git config — global user.name “gebruiker”
git config — global user.email “gebruiker@example.com”

sudo mkdir ./git 
cd ./git
git clone https://github.com/Bedrijfstak14/Open-Dag.git

# Deploy NPM:



# Deploy Stirling

cd ./strirling-pdf
docker compose up -d
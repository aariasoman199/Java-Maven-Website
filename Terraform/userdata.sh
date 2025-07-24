#!/bin/bash
yum install docker -y
yum install java-17 -y

systemctl start docker.service
systemctl enable docker.service
usermod -a -G docker ec2-user

docker pull aariasoman/java-web-app:latest
docker run -d -p 8080:8080 aariasoman/java-web-app:latest


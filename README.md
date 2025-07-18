# sample-code
sample


# To build code

` mvn clean package ` 

then create docker image

FROM eclipse-temurin:17-jre-alpine
target/java17-webapp-1.0.0.jar


java -jar <path>/java17-webapp-1.0.0.jar


docker build ..........
docker login , docker push


then using terraform , create an ec2 instance
ami-0a1235697f4afa8a4

in userdata, install docker and java17
then do a docker pull <image name>
docker run -p 8080:8080 <image name>

then create A record of IP , url should be like http://<project-name>-<project-env>.chottu.shop



2 workflow

1 build using maven and docker build & push

2. deploy infra
3.  destory infra

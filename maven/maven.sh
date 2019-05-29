#!/bin/bash

docker load -i maven.3.5.2-jdk-8-alpine.tar
docker volume create --name maven-repo
docker run -it --rm -v maven-repo:/root/.m2 -v "$PWD":/usr/src/mymaven -v ~/maven/settings.xml:/usr/share/maven/conf/settings.xml:ro -w /usr/src/mymaven maven:3.5.2-jdk-8-alpine mvn package

#!/bin/bash

cd $(dirname $0)
docker run --name jar -p 8080:8080 -v $PWD:/home -w /home -d java:8u111-jdk-alpine java -jar -Duser.timezone=GMT+8 my.jar

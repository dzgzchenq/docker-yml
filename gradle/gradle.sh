#!/bin/bash

docker run --rm --name gradle -it gradle:5.2.1-jdk8-alpine /bin/sh
>> gradle wrapper
docker cp gradle:/home/gradle ./

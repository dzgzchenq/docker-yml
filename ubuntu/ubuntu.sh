#!/bin/bash

docker run --name ubuntu -p 80:80 -h UBUNTU -dit --rm -w /root ubuntu:bionic-20180526 /bin/bash
docker attach ubuntu
# escape: [Ctrl + P] [Ctrl + Q]
# exit  : [Ctrl + D]

#!/bin/bash

docker load -i node.9.10.0-alpine.tar
docker volume rm node-repo
docker volume create --name node-repo
alias dnode='docker run -it --rm -v "$PWD":/usr/src/app -w /usr/src/app -v node-repo:/root -e NPM_CONFIG_PREFIX=/root/.npm-global -e PATH=$PATH:/root/.npm-global/bin node:9.10.0-alpine'
dnode npm -v
dnode npm config set registry https://registry.npm.taobao.org
dnode npm config get registry
#dnode npm --registry=https://registry.npm.taobao.org install -g cnpm

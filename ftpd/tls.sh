#!/bin/bash

mkdir -p ./ssl
openssl dhparam -out ./ssl/pure-ftpd-dhparams.pem 2048
openssl req -x509 -nodes -newkey rsa:2048 -sha256 \
  -subj "/C=CN/ST=SH/L=SH/O=Docker-demo/CN=mail.typhoon.fun" \
  -keyout ./ssl/pure-ftpd.pem \
  -out ./ssl/pure-ftpd.pem
chmod 600 ./ssl/*.pem

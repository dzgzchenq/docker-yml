#!/bin/bash

openssl req \
  -new \
  -newkey rsa:4096 \
  -days 3650 \
  -nodes \
  -x509 \
  -subj "/C=CN/ST=SH/L=SH/O=Docker-demo/CN=mail.typhoon.fun" \
  -keyout key.pem \
  -out cert.pem

#!/bin/bash

docker run --rm -v $PWD:/myapp -w /myapp golang:1.10.3-alpine3.8 go build -v
docker run --rm -v $PWD:/myapp -w /myapp golang:1.10.3-alpine3.8 make
docker run --rm -v $PWD:/myapp -w /myapp -e GOOS=windows -e GOARCH=amd64 golang:1.10.3-alpine3.8 go build -v
# GOOS: windows darwin linux
# GOARCH: amd64 386 arm arm64

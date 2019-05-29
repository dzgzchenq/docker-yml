#!/bin/bash

alias dsbt='docker run -it --rm -v $PWD:/app bigtruedata/sbt:0.13.15-alpine-2.12.3'
dsbt sbt

#!/bin/bash

alias dscala='docker run -it --rm -v $PWD:/app bigtruedata/scala:2.12.4-alpine'
dscala scala -version

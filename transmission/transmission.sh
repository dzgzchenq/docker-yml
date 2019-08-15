#!/bin/bash

#docker build . -t chenq/transmission
docker run -v $PWD:/workspace -d chenq/transmission $*
#docker run -v $PWD:/workspace --rm -it chenq/transmission $*

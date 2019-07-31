#!/bin/bash

#docker build . -t chenq/ffmpeg
#docker run -d -v $PWD:/workspace chenq/ffmpeg $*
sudo docker run --rm -it -v $PWD:/workspace chenq/ffmpeg $*

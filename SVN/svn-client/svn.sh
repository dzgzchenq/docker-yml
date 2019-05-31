#!/bin/bash

#docker build . -t chenq/svn-client
sudo docker run --rm -it -w /svn -v $PWD:/svn chenq/svn-client $*

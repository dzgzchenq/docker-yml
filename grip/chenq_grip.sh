#!/bin/bash

docker run --rm -v $PWD:/home -p 8080:6419 chenq/grip test.md 0.0.0.0
docker run --rm -v $PWD:/home chenq/grip test.md --export test.html

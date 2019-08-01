#!/bin/bash

#docker build . -t chenq/ffmpeg
#docker run -d -v $PWD:/workspace chenq/ffmpeg $*
docker run --rm -it -v $PWD:/workspace chenq/ffmpeg $*

# 转码
#./ffmpeg.sh -i input*.wmv output.mp4
#./ffmpeg.sh -f mpegts -i input*.mp4 output.mp4
# 时间片段
#./ffmpeg.sh -ss 00:00:00 -t 00:00:05 -i input.mp4 -vcodec copy -acodec copy output.mp4
# 屏幕缩放
#./ffmpeg.sh -i input.mp4 -vf "scale=iw/2:-1" output.mp4

#!/usr/bin/env bash

## https://trac.ffmpeg.org/wiki/Create%20a%20thumbnail%20image%20every%20X%20seconds%20of%20the%20video

## $ ffmpeg [global_options] {[input_file_options] -i input_url} ... {[output_file_options] output_url} ...


#ffmpeg -i myvideo.avi -vf fps=1/60 img%03d.jpg

#ffmpeg -i demo.mp4 -vf fps=1 asset/img%3d.png
#ffmpeg -i demo.mp4 -vf fps=1/60 asset/img%3d.png
#ffmpeg -i demo.mp4 -vf fps=1/600 asset/img%3d.png



#ffmpeg -ss 00:19:30.435 -i demo.mp4 -t 00:00:01 asset/img%3d.pn
#ffmpeg -ss 00:19:30.435 -i demo.mp4 -t 00:00:01 -vf fps=24 asset/img%3d.png
#ffmpeg -ss 00:19:30.435 -i demo.mp4 -t 00:00:01 -vf fps=10 asset/img%3d.png


ffmpeg -ss 00:19:30.435 -i demo.mp4 -t 1 -vf fps=10 asset/img%3d.png
#ffmpeg -ss 00:19:30.435 -i demo.mp4 -t 1 -vf fps=10 asset/out.mp4

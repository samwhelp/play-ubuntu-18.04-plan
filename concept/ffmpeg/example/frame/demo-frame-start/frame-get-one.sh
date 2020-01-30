#!/usr/bin/env bash

## https://trac.ffmpeg.org/wiki/Create%20a%20thumbnail%20image%20every%20X%20seconds%20of%20the%20video

## $ ffmpeg [global_options] {[input_file_options] -i input_url} ... {[output_file_options] output_url} ...

#ffmpeg -i demo.mp4 -ss 00:00:14.435 -vframes 1 out.png

ffmpeg -ss 00:19:30.435 -i demo.mp4 -vframes 1 out.png

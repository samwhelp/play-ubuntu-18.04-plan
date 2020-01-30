#!/usr/bin/env bash

## https://trac.ffmpeg.org/wiki/Slideshow

#ffmpeg -framerate 24 -i asset/%03d.png asset/output.mp4

ffmpeg -framerate 80 -i asset/%03d.png asset/output.mp4
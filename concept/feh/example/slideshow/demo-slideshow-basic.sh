#!/usr/bin/env bash

## $ feh [options] [files | directories | URLs ...]

## files
#feh --slideshow-delay=3 /usr/share/backgrounds/*.jpg
#feh --slideshow-delay 3 /usr/share/backgrounds/*.jpg
feh -D 3 /usr/share/backgrounds/*.jpg


## directories
#feh --slideshow-delay=3 /usr/share/backgrounds
#feh --slideshow-delay 3 /usr/share/backgrounds
#feh -D 3 /usr/share/backgrounds
#feh -D 3 /usr/share/backgrounds /usr/share/wallpapers


## URLs
#feh --slideshow-delay=3 https://www.google.com.tw/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png https://www.google.com.tw/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png
#feh --slideshow-delay 3 https://www.google.com.tw/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png https://www.google.com.tw/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png
#feh -D 3 https://www.google.com.tw/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png https://www.google.com.tw/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png

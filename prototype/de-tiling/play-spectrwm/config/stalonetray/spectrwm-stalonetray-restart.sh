#!/usr/bin/env bash

killall -9 stalonetray


fcitx &

nm-applet &


#volumeicon &
mate-volume-control-applet &


#exec stalonetray -bg '#303030' -i 16 --geometry 1x1-200+1
exec stalonetray -bg '#303030' -i 18 --geometry 1x1-200+1

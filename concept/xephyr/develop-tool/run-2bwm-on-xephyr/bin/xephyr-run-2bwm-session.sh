#!/usr/bin/env bash


################################################################################
### Head: Link
##

## Original Script
## https://github.com/worron/awesome-config/blob/master/scripts/run-with-xephyr.sh

## Arch Wiki / Xephyr
## https://wiki.archlinux.org/index.php/Xephyr

### Tail: Link
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	## screen_size
	local screen_size="1280x960"

	if [ "none$1" != "none" ]; then
		screen_size="$1"
	fi

	## run Xephyr
	#Xephyr :100 -ac -screen 1920x1080 &
	#Xephyr :100 -ac -screen 1280x960 &
	#Xephyr :100 -ac -screen 1024x576 &
	Xephyr :100 -ac -screen "$screen_size" &
	XEPHYR_PID=$!
	sleep 0.5


	## $ which 2bwm-session.sh
	## /usr/local/bin/2bwm-session.sh

	## run 2bwm
	#DISPLAY=:100 /usr/local/bin/2bwm-session.sh
	DISPLAY=:100 2bwm-session.sh

	## make sure kill Xephyr
	kill ${XEPHYR_PID}

}

__main__ $@

##
### Tail: Main
################################################################################


################################################################################
### Head: Tips
##

# $ xrandr
# Screen 0: minimum 320 x 200, current 1680 x 1050, maximum 8192 x 8192
# VGA-1 connected primary 1680x1050+0+0 (normal left inverted right x axis y axis) 470mm x 300mm
#    1680x1050     59.85*+
#    1280x1024     75.02    72.05    70.00    60.02
#    1280x960      60.00
#    1024x768      75.03    72.00    70.07    60.00
#    832x624       74.55
#    800x600       72.19    75.00    60.32    56.25
#    640x480       75.00    72.81    66.67    59.94
#    720x400       70.08

##
### Tail: Tips
################################################################################

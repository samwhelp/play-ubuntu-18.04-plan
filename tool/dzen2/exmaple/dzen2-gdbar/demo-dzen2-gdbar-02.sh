#!/usr/bin/env bash

## https://wiki.archlinux.org/index.php/Spectrwm#Bash_scripts
## https://wiki.archlinux.org/index.php/Dzen#dbar
(
	SLEEP_SEC=1
	COUNT=0
	while :; do
		if [ $COUNT -ge 100 ]; then
			break
		fi
		let COUNT=$COUNT+10
		echo -e "$COUNT"
		sleep $SLEEP_SEC
	done
) \
|
	dzen2-gdbar \
	-max 100 \
	-min 0 \
	-l 'Vol ' \
	-bg '#505050' \
	-fg '#707070' \
	-ss '0' \
	-sw '10' \
	-h '20' \
	-w '200' \
	-s 'o' \
|
	dzen2 \
	-p \
	-l 'a' \
	-bg '#303030' \
	-fg '#CCCCCC' \
	-w '250' \
	-h '40' \
	-y '400' \
	-x '400' \
	-ta c \
	-sa c \
	-e 'onstartup=uncollapse;button3=exit' \

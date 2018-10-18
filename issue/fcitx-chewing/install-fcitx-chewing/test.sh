#!/usr/bin/env bash

is_fcitx_running () {
	fcitx-remote &> /dev/null
	if [ "$?" = "0" ]; then
		return 0;
	else
		return 1;
	fi
}

if is_fcitx_running; then
	echo 'fcitx is running'
else
	echo 'fcitx not running'
fi

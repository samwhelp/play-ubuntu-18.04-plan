#!/usr/bin/env bash

if xprop -root _NET_SHOWING_DESKTOP | grep '= 1'; then
	wmctrl -k off
else
	wmctrl -k on
fi

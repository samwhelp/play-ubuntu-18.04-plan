#!/usr/bin/env bash

Xephyr :100 -ac -screen 1024x576 &
XEPHYR_PID=$!
sleep 0.5

DISPLAY=:100 awesome -c rc.lua
kill ${XEPHYR_PID}

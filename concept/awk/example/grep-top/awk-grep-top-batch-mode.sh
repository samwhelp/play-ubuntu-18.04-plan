#!/usr/bin/env bash


top -b | awk '/Mem :/ {print;}'

##
## man top | grep 'Batch\-mode' -A 4
##

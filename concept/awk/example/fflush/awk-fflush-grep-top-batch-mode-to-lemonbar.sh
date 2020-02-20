#!/usr/bin/env bash


top -b | awk '/Mem :/ {print; fflush()}' | lemonbar -p

##
## man top | grep 'Batch\-mode' -A 4
##

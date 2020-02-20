#!/usr/bin/env bash


top -b | awk '/Mem :/ {print; fflush()}' | dzen2 -p

##
## man top | grep 'Batch\-mode' -A 4
##

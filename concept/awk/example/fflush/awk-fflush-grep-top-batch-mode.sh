#!/usr/bin/env bash


top -b | awk '/Mem :/ {print; fflush()}'

##
## man top | grep 'Batch\-mode' -A 4
##

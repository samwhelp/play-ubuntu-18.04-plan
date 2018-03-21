#!/usr/bin/env bash


apt-cache dumpavail | grep 'Provides: x-window-manager' -B 11 | grep '^Package:' | awk -F ': ' '{print $2}' | sed 's/, /\n/g' | sort -u | awk '{printf "* [%s](https://packages.ubuntu.com/bionic/%s)\n", $1, $1}' > x-window-manager.md

#!/usr/bin/env bash


apt-cache showsrc ubuntu-wallpapers | grep '^Binary:' | awk -F ': ' '{print $2}' | sed 's/, /\n/g' | sort | awk '{printf "* [%s](https://packages.ubuntu.com/bionic/%s)\n", $1, $1}' > ubuntu-wallpapers.md

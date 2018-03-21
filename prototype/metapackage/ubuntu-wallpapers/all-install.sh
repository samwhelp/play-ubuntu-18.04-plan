#!/usr/bin/env bash

echo
echo "install all ubuntu-wallpapers"
sudo apt-get install $(cat ubuntu-wallpapers.txt)

#sudo apt-get install $(apt-cache showsrc ubuntu-wallpapers | grep '^Binary:' | awk -F ': ' '{print $2}' | sed 's/, /\n/g' | sort -u)

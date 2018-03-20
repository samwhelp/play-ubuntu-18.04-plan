#!/usr/bin/env bash

## https://www.google.com.tw/chrome/index.html

echo
echo "wget -c 'https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb'"
wget -c 'https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb'


echo
echo "dpkg -I google-chrome-stable_current_amd64.deb"
dpkg -I google-chrome-stable_current_amd64.deb


## way 1
#sudo dpkg -i google-chrome-stable_current_amd64.deb
#sudo apt-get install -f


## way 2
echo
echo "sudo apt-get install gdebi-core"
sudo apt-get install gdebi-core

echo
echo "sudo gdebi --n google-chrome-stable_current_amd64.deb"
sudo gdebi --n google-chrome-stable_current_amd64.deb

#!/usr/bin/env bash

## https://github.com/atom/atom/releases
## https://atom.io/

echo
echo "wget -c 'https://atom.io/download/deb' -O atom-amd64.deb"
wget -c 'https://atom.io/download/deb' -O atom-amd64.deb


echo
echo "dpkg -I atom-amd64.deb"
dpkg -I atom-amd64.deb


## way 1
#sudo dpkg -i atom-amd64.deb
#sudo apt-get install -f


## way 2
echo
echo "sudo apt-get install gdebi-core"
sudo apt-get install gdebi-core

echo
echo "sudo gdebi --n atom-amd64.deb"
sudo gdebi --n atom-amd64.deb

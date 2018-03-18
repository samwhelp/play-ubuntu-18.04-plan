#!/usr/bin/env bash


# apt-cache pkgnames fonts | grep cns
# apt-cache pkgnames fonts | grep cns11643
# fonts-cns11643-sung
# fonts-cns11643-kai


#echo
#echo "sudo apt-get install $(apt-cache pkgnames fonts | grep cns11643)"
#sudo apt-get install $(apt-cache pkgnames fonts | grep cns11643)

echo
echo "sudo apt-get install fonts-cns11643-kai fonts-cns11643-sung"
sudo apt-get install fonts-cns11643-kai fonts-cns11643-sung

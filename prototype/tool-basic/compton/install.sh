#!/usr/bin/env bash

sudo apt-get install compton

cp $(dpkg -L compton | grep conf) ~/.config/compton.conf

## $ dpkg -L compton | grep conf
## /usr/share/doc/compton/examples/compton.sample.conf

#!/usr/bin/env bash

echo "sudo cp ./config/us/sources.list /etc/apt/sources.list"
sudo cp ./config/us/sources.list /etc/apt/sources.list

echo "sudo apt-get update"
sudo apt-get update
# ls /var/lib/apt/lists/ -1
# ls /var/lib/apt/lists/ -l

#!/usr/bin/env bash


### Head: init #################################################################
#
THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
THE_BASE_DIR_PATH="$THE_BASE_DIR_PATH/../../../../ext"
source "$THE_BASE_DIR_PATH/init.sh"
#
### Tail: init #################################################################


### Head: main #################################################################
#
apt_src_tw_main () {

	echo
	echo "sudo cp $THE_SUB_ON_DIR_PATH/apt/conf/set/tw/sources.list /etc/apt/sources.list"
	sudo cp "$THE_SUB_ON_DIR_PATH/apt/conf/set/tw/sources.list" "/etc/apt/sources.list"


	echo
	echo "cat /etc/apt/sources.list"
	cat /etc/apt/sources.list


	echo
	echo 'sudo apt-get update'
	sudo apt-get update

}

apt_src_tw_main
#
### Tail: main #################################################################

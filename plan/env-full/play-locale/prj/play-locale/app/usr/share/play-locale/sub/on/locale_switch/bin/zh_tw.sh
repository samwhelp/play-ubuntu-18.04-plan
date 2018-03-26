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
locale_switch_zh_tw_main () {

	echo
	echo "sudo cp $THE_SUB_ON_DIR_PATH/locale_switch/conf/zh_tw/locale /etc/default/locale"
	sudo cp "$THE_SUB_ON_DIR_PATH/locale_switch/conf/zh_tw/locale" "/etc/default/locale"


	echo
	echo "cat /etc/default/locale"
	cat /etc/default/locale


	echo
	echo "locale"
	locale

}


locale_switch_zh_tw_main
#
### Tail: main #################################################################

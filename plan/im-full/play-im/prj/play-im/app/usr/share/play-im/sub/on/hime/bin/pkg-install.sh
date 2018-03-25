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
hime_pkg_install_main () {
	sudo apt-get install $(util_load_type_sub_package_list "hime" "install")
}


hime_pkg_install_main
#
### Tail: main #################################################################

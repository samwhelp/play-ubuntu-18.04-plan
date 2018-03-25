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
hime_pkg_remove_main () {
	sudo apt-get purge $(util_load_type_sub_package_list "hime" "remove")
}


hime_pkg_remove_main
#
### Tail: main #################################################################

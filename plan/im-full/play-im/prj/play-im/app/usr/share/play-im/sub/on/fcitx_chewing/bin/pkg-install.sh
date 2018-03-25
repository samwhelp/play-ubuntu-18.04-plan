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
fcitx_chewing_pkg_install_main () {
	sudo apt-get install $(util_load_type_sub_package_list "fcitx_chewing" "install")
}


fcitx_chewing_pkg_install_main
#
### Tail: main #################################################################

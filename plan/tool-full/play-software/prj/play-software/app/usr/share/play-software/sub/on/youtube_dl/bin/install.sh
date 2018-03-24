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
youtube_dl_install_main () {
	util_run_sub_module_function 'youtube_dl' 'app_install' 'youtube_dl_app_install'
}


youtube_dl_install_main
#
### Tail: main #################################################################

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
gcin_conf_reset_main () {
	util_run_sub_module_function 'gcin' 'conf_reset' 'gcin_conf_reset'
}


gcin_conf_reset_main
#
### Tail: main #################################################################

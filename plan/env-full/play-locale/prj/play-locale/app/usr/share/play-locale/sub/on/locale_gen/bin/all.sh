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
locale_gen_all_main () {

	util_run_sub_module_function 'locale_gen' 'conf_set' 'locale_gen_conf_set'

}


locale_gen_all_main
#
### Tail: main #################################################################

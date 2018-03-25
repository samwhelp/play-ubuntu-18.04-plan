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
gcin_remove_main () {

	"$THE_SUB_ON_DIR_PATH/gcin/bin/pkg-remove.sh"
	"$THE_SUB_ON_DIR_PATH/gcin/bin/conf-reset.sh"

}


gcin_remove_main
#
### Tail: main #################################################################

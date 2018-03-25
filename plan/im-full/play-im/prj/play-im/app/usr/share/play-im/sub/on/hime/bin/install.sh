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
hime_install_main () {

	"$THE_SUB_ON_DIR_PATH/hime/bin/pkg-install.sh"
	"$THE_SUB_ON_DIR_PATH/hime/bin/conf-set.sh"

}


hime_install_main
#
### Tail: main #################################################################

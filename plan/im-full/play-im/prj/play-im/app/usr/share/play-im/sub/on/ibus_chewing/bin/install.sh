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
ibus_chewing_install_main () {

	"$THE_SUB_ON_DIR_PATH/ibus_chewing/bin/pkg-install.sh"
	"$THE_SUB_ON_DIR_PATH/ibus_chewing/bin/conf-set.sh"

}


ibus_chewing_install_main
#
### Tail: main #################################################################

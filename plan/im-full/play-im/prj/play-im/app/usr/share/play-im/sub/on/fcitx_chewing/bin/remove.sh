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
fcitx_chewing_remove_main () {

	"$THE_SUB_ON_DIR_PATH/fcitx_chewing/bin/pkg-remove.sh"
	"$THE_SUB_ON_DIR_PATH/fcitx_chewing/bin/conf-reset.sh"

}


fcitx_chewing_remove_main
#
### Tail: main #################################################################

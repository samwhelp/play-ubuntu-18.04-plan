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
fcitx_chewing_install_main () {

	"$THE_SUB_ON_DIR_PATH/fcitx_chewing/bin/pkg-install.sh"
	"$THE_SUB_ON_DIR_PATH/fcitx_chewing/bin/conf-set.sh"

}


fcitx_chewing_install_main
#
### Tail: main #################################################################

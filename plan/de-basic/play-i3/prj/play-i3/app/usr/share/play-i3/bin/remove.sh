#!/usr/bin/env bash


## init
THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source "$THE_BASE_DIR_PATH/_init.sh"


## main
main_remove () {
	cd $THE_BIN_DIR_PATH

	./pkg-remove.sh
	./conf-reset.sh

}

main_remove "$@"

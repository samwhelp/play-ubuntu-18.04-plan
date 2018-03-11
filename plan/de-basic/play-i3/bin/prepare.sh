#!/usr/bin/env bash


## init
THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source "$THE_BASE_DIR_PATH/_init.sh"


## main
main_prepare () {
	sudo apt-get install dpkg-dev debhelper devscripts
}

main_prepare "$@"

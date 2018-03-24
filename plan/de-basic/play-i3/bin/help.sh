#!/usr/bin/env bash


### Head: init #################################################################
#
THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
THE_BASE_DIR_PATH="$THE_BASE_DIR_PATH/../ext"
source "$THE_BASE_DIR_PATH/init.sh"
#
### Tail: init #################################################################


### Head: main #################################################################
#
main_help () {
	cat <<EOF

Usage:

$ make [command]

Ex:

$ make
$ make help

$ make prepare

$ make deb-build
$ make deb-clean

$ make deb-install
$ make deb-remove

$ make serve

EOF
}

main_help "$@"
#
### Tail: main #################################################################

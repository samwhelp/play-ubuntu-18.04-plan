#!/usr/bin/env bash


## init
THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source "$THE_BASE_DIR_PATH/_init.sh"


## main
main_help_make () {
	cat <<EOF

Usage:

$ make [command]

Ex:

$ make
$ make help

$ make install
$ make remove

$ make pkg-install
$ make pkg-remove

$ make conf-set
$ make conf-reset

EOF
}

main_help_make "$@"

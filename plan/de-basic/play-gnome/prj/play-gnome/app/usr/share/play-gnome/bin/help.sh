#!/usr/bin/env bash

## init
THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source "$THE_BASE_DIR_PATH/_init.sh"


## main
main_help () {
	cat <<EOF

Usage:

$ $THE_MAIN_CMD_NAME [command]

Ex:

$ $THE_MAIN_CMD_NAME
$ $THE_MAIN_CMD_NAME help

$ $THE_MAIN_CMD_NAME install
$ $THE_MAIN_CMD_NAME remove

$ $THE_MAIN_CMD_NAME pkg-install
$ $THE_MAIN_CMD_NAME pkg-remove

$ $THE_MAIN_CMD_NAME conf-set
$ $THE_MAIN_CMD_NAME conf-reset

Manpage:

$ man $THE_MAIN_CMD_NAME

EOF
}

main_help "$@"

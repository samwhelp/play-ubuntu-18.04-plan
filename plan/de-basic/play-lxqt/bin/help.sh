#!/usr/bin/env bash

## init
THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source "$THE_BASE_DIR_PATH/_init.sh"


usage () {
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

usage

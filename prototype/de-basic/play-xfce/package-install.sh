#!/usr/bin/env bash

set -e

### Head: main #################################################################
#
main_package_install () {
	sudo apt-get install $(cat package-list.txt)
}

main_package_install
#
### Tail: main #################################################################

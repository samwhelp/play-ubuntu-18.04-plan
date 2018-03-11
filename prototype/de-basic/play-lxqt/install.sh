#!/usr/bin/env bash

set -e

### Head: main #################################################################
#
main_install () {

	echo

	echo '### Head: package-install ######################################################'
	echo '#'

	./package-install.sh

	echo '#'
	echo '### Tail: package-install ######################################################'

	echo
	echo

	echo '### Head: config-install #######################################################'
	echo '#'

	./config-install.sh

	echo '#'
	echo '### Tail: config-install #######################################################'

	echo
}

main_install
#
### Tail: main #################################################################

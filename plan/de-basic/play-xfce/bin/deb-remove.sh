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
main_deb_remove () {
	## prepare dir
	base_dir_prepare


	## cd ../var
	cd "$THE_VAR_DIR_PATH"
	## pwd

	## now in dir [var]


	## sudo dpkg -r demo
	# sudo dpkg -r $THE_DEB_PKG_NAME


	## sudo apt-get remove --purge demo
	#sudo apt-get remove --purge $THE_DEB_PKG_NAME


	## sudo apt-get purge demo
	sudo apt-get purge $THE_DEB_PKG_NAME
}

main_deb_remove "$@"
#
### Tail: main #################################################################

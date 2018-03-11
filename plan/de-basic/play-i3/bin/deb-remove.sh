#!/usr/bin/env bash


## init
THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source "$THE_BASE_DIR_PATH/_init.sh"


## main
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

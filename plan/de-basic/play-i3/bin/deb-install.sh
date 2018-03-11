#!/usr/bin/env bash


## init
THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source "$THE_BASE_DIR_PATH/_init.sh"


## main
main_deb_install () {
	## prepare dir
	base_dir_prepare


	## cd ../var/deb
	cd "$THE_DEB_DIR_PATH"
	## pwd

	## now in dir [var/deb]

	## override
	THE_DEB_FILE_NAME="$THE_DEB_PKG_NAME""_0.1.0_all.deb"
	THE_DEB_FILE_PATH="$THE_DEB_DIR_PATH/$THE_DEB_FILE_NAME"

	if ! [ -f "$THE_DEB_FILE_PATH" ]; then
		echo "Deb file is not exists: $THE_DEB_FILE_PATH";
		echo
		echo 'Please build first:'
		echo
		echo 'make deb-build'
		exit 0;
	fi
	## sudo dpkg -i demo.deb
	sudo dpkg -i $THE_DEB_FILE_NAME
}

main_deb_install "$@"

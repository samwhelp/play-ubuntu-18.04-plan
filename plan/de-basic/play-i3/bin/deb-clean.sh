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
main_deb_clean () {
	## prepare dir
	base_dir_prepare

	## cd ../prj/demo
	cd $THE_MAIN_DIR_PATH
	##pwd

	## now in dir [prj/demo]

	debclean


	## cd ../var/deb
	cd $THE_DEB_DIR_PATH
	## pwd

	## now in dir [var/deb]


	echo 'Ask clean deb:'
	ls $THE_DEB_DIR_PATH -1
	echo


	read -p 'Are you sure? [y/N]' ANS
	##echo "Your answer is [ $ANS ]"

	if [ "$ANS" != "y" ]; then
		echo
		echo 'Do Nothing!'
		exit 0; ## for make no err
		## exit 1;
	fi


	## remove all deb package
	##rm -f ./*.deb && echo 'All alear.'

	rm "$THE_DEB_PKG_NAME"_*

}

main_deb_clean "$@"
#
### Tail: main #################################################################

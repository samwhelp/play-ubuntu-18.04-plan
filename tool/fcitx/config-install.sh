#!/usr/bin/env bash

set -e


################################################################################
### Head: fcitx
##
fcitx_config_install () {

	echo "mkdir -p $HOME/.config/fcitx"
	mkdir -p "$HOME/.config/fcitx"

	echo "cp ./config/fcitx/profile $HOME/.config/fcitx/profile"
	cp "./config/fcitx/profile" "$HOME/.config/fcitx/profile"


	fcitx_config_install_im_config

}

fcitx_config_install_im_config () {
	echo

	echo "im-config -n fcitx"
	im-config -n fcitx

	echo "cat ~/.xinputrc"
	cat ~/.xinputrc

	echo
}
##
### Tail: fcitx
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	fcitx_config_install

}
## start
main_config_install

##
### Tail: main
################################################################################

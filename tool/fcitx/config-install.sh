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
### Head: fcitx / chewing
##

fcitx_config_install_chewing () {

	echo "mkdir -p $HOME/.config/fcitx/conf"
	mkdir -p "$HOME/.config/fcitx/conf"

	echo "cp ./config/fcitx/conf/fcitx-chewing.config $HOME/.config/fcitx/conf/fcitx-chewing.config"
	cp "./config/fcitx/conf/fcitx-chewing.config" "$HOME/.config/fcitx/conf/fcitx-chewing.config"

}

##
### Tail: fcitx / chewing
################################################################################


################################################################################
### Head: fcitx / classic-ui
##

fcitx_config_install_classic_ui () {

	echo "cp ./config/fcitx/conf/fcitx-classic-ui.config $HOME/.config/fcitx/conf/fcitx-classic-ui.config"
	cp "./config/fcitx/conf/fcitx-classic-ui.config" "$HOME/.config/fcitx/conf/fcitx-classic-ui.config"

}

##
### Tail: fcitx / classic-ui
################################################################################


################################################################################
### Head: fcitx / quickphrase
##

fcitx_config_install_quickphrase () {

	echo "cp ./config/fcitx/conf/fcitx-quickphrase.config $HOME/.config/fcitx/conf/fcitx-quickphrase.config"
	cp "./config/fcitx/conf/fcitx-quickphrase.config" "$HOME/.config/fcitx/conf/fcitx-quickphrase.config"

}

##
### Tail: fcitx / quickphrase
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	fcitx_config_install

	fcitx_config_install_chewing

	fcitx_config_install_classic_ui

	fcitx_config_install_quickphrase

}
## start
main_config_install

##
### Tail: main
################################################################################

#!/usr/bin/env bash

set -e


### Head: i3 ###################################################################
#
i3_config_install () {
	mkdir -p $HOME/.config/i3
	echo "mkdir -p $HOME/.config/i3"

	cp ./config/i3/config $HOME/.config/i3/config
	echo "cp ./config/i3/config $HOME/.config/i3/config"
}
#
### Tail: i3 ###################################################################


### Head: rofi #################################################################
#
rofi_config_install () {
	mkdir -p $HOME/.config/rofi
	echo "mkdir -p $HOME/.config/rofi"

	cp ./config/rofi/config $HOME/.config/rofi/config
	echo "cp ./config/rofi/config $HOME/.config/rofi/config"
}
#
### Tail: rofi #################################################################


### Head: fcitx ################################################################
#
fcitx_config_install () {
	mkdir -p $HOME/.config/fcitx
	echo "mkdir -p $HOME/.config/fcitx"

	cp ./config/fcitx/profile $HOME/.config/fcitx/profile
	echo "cp ./config/fcitx/profile $HOME/.config/fcitx/profile"

	fcitx_config_install_im_config

}

fcitx_config_install_im_config () {
	echo
	im-config -n fcitx
	echo "im-config -n fcitx"
	echo "cat ~/.xinputrc"
	cat ~/.xinputrc
	echo
}
#
### Tail: fcitx ################################################################


### Head: gtk3 #################################################################
#
gtk3_config_install () {
	mkdir -p $HOME/.config/gtk-3.0
	echo "mkdir -p $HOME/.config/gtk-3.0"

	cp ./config/gtk3/settings.ini $HOME/.config/gtk-3.0/settings.ini
	echo "cp ./config/gtk3/settings.ini $HOME/.config/gtk-3.0/settings.ini"
}
#
### Tail: gtk3 #################################################################


### Head: gtk2 #################################################################
#
gtk2_config_install () {

	cp ./config/gtk2/.gtkrc-2.0 $HOME/.gtkrc-2.0
	echo "cp ./config/gtk2/.gtkrc-2.0 $HOME/.gtkrc-2.0"

}
#
### Tail: gtk2 #################################################################


### Head: main #################################################################
#
main_config_install () {
	i3_config_install

	rofi_config_install

	fcitx_config_install

	gtk3_config_install

	gtk2_config_install
}
#
main_config_install

### Tail: main #################################################################

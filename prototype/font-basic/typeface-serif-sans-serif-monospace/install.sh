#!/usr/bin/env bash

# * global: /etc/fonts/local.conf
# * personal: ~/.config/fontconfig/fonts.conf


conf_set_global () {
	## global
	echo
	echo "conf_set_global:"

	echo
	echo "sudo cp ./config/basic/fonts.conf /etc/fonts/local.conf"
	sudo cp ./config/basic/fonts.conf /etc/fonts/local.conf
}


conf_set_personal () {
	## personal
	echo
	echo "conf_set_personal:"

	echo
	echo "mkdir -p $HOME/.config/fontconfig"
	mkdir -p "$HOME/.config/fontconfig"

	echo "cp ./config/basic/fonts.conf $HOME/.config/fontconfig/fonts.conf"
	cp "./config/basic/fonts.conf" "$HOME/.config/fontconfig/fonts.conf"
}


conf_set_main () {
	conf_set_global
	#conf_set_personal
}

conf_set_main


## howto check
#fc-match -a monospace | less
#fc-match -a sans-serif | less
#fc-match -a serif | less

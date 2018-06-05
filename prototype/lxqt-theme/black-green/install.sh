#!/usr/bin/env bash


lxqt_theme_black_green_clone () {
	git clone https://github.com/stefonarch/black-green.git
}


lxqt_theme_black_green_check () {
	if [ -e /usr/share/lxqt/themes/black-green ]; then
		echo
		echo 'Directory exits: /usr/share/lxqt/themes/black-green'
		echo 'Please remove /usr/share/lxqt/themes/black-green first!'
		echo
		echo 'sudo rm /usr/share/lxqt/themes/black-green -rf'
		echo 'or'
		echo 'sudo mv /usr/share/lxqt/themes/black-green ./black-green.bak'
		exit 1
	fi
}


lxqt_theme_black_green_install () {
	sudo cp ./black-green /usr/share/lxqt/themes/black-green -a
	sudo chown root.root /usr/share/lxqt/themes/black-green -R
}


lxqt_theme_black_green_config () {
	cp ./config/lxqt/lxqt.conf "$HOME/.config/lxqt/lxqt.conf"
}


lxqt_theme_black_green_main () {
	lxqt_theme_black_green_check
	lxqt_theme_black_green_clone
	lxqt_theme_black_green_install
	lxqt_theme_black_green_config
}


lxqt_theme_black_green_main

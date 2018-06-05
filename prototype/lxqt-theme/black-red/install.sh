#!/usr/bin/env bash


lxqt_theme_black_red_clone () {
	git clone https://github.com/stefonarch/black-red.git
}


lxqt_theme_black_red_check () {
	if [ -e /usr/share/lxqt/themes/black-red ]; then
		echo
		echo 'Directory exits: /usr/share/lxqt/themes/black-red'
		echo 'Please remove /usr/share/lxqt/themes/black-red first!'
		echo
		echo 'sudo rm /usr/share/lxqt/themes/black-red -rf'
		echo 'or'
		echo 'sudo mv /usr/share/lxqt/themes/black-red ./black-red.bak'
		exit 1
	fi
}


lxqt_theme_black_red_install () {
	sudo cp ./black-red /usr/share/lxqt/themes/black-red -a
	sudo chown root.root /usr/share/lxqt/themes/black-red -R
}


lxqt_theme_black_red_config () {
	cp ./config/lxqt/lxqt.conf "$HOME/.config/lxqt/lxqt.conf"
}


lxqt_theme_black_red_main () {
	lxqt_theme_black_red_check
	lxqt_theme_black_red_clone
	lxqt_theme_black_red_install
	lxqt_theme_black_red_config
}


lxqt_theme_black_red_main

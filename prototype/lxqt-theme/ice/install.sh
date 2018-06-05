#!/usr/bin/env bash


lxqt_theme_ice_clone () {
	git clone https://github.com/stefonarch/ice.git
}


lxqt_theme_ice_check () {
	if [ -e /usr/share/lxqt/themes/ice ]; then
		echo
		echo 'Directory exits: /usr/share/lxqt/themes/ice'
		echo 'Please remove /usr/share/lxqt/themes/ice first!'
		echo
		echo 'sudo rm /usr/share/lxqt/themes/ice -rf'
		echo 'or'
		echo 'sudo mv /usr/share/lxqt/themes/ice ./ice.bak'
		exit 1
	fi
}


lxqt_theme_ice_install () {
	sudo cp ./ice /usr/share/lxqt/themes/ice -a
	sudo chown root.root /usr/share/lxqt/themes/ice -R
}


lxqt_theme_ice_config () {
	cp ./config/lxqt/lxqt.conf "$HOME/.config/lxqt/lxqt.conf"
}


lxqt_theme_ice_main () {
	lxqt_theme_ice_check
	lxqt_theme_ice_clone
	lxqt_theme_ice_install
	lxqt_theme_ice_config
}


lxqt_theme_ice_main

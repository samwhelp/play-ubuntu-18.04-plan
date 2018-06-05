#!/usr/bin/env bash


lxqt_theme_silver_clone () {
	git clone https://github.com/stefonarch/silver.git
}


lxqt_theme_silver_check () {
	if [ -e /usr/share/lxqt/themes/silver ]; then
		echo
		echo 'Directory exits: /usr/share/lxqt/themes/silver'
		echo 'Please remove /usr/share/lxqt/themes/silver first!'
		echo
		echo 'sudo rm /usr/share/lxqt/themes/silver -rf'
		echo 'or'
		echo 'sudo mv /usr/share/lxqt/themes/silver ./silver.bak'
		exit 1
	fi
}


lxqt_theme_silver_install () {
	sudo cp ./silver /usr/share/lxqt/themes/silver -a
	sudo chown root.root /usr/share/lxqt/themes/silver -R
}


lxqt_theme_silver_config () {
	cp ./config/lxqt/lxqt.conf "$HOME/.config/lxqt/lxqt.conf"
}


lxqt_theme_silver_main () {
	lxqt_theme_silver_check
	lxqt_theme_silver_clone
	lxqt_theme_silver_install
	lxqt_theme_silver_config
}


lxqt_theme_silver_main

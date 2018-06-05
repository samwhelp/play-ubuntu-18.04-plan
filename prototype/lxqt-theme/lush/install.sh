#!/usr/bin/env bash


lxqt_theme_lush_clone () {
	git clone https://github.com/Val6789/lush-lxqt-theme.git
}


lxqt_theme_lush_check () {
	if [ -e /usr/share/lxqt/themes/lush ]; then
		echo
		echo 'Directory exits: /usr/share/lxqt/themes/lush'
		echo 'Please remove /usr/share/lxqt/themes/lush first!'
		echo
		echo 'sudo rm /usr/share/lxqt/themes/lush -rf'
		echo 'or'
		echo 'sudo mv /usr/share/lxqt/themes/lush ./lush.bak'
		exit 1
	fi
}


lxqt_theme_lush_install () {
	sudo cp ./lush-lxqt-theme /usr/share/lxqt/themes/lush -a
	sudo chown root.root /usr/share/lxqt/themes/lush -R
}


lxqt_theme_lush_config () {
	cp ./config/lxqt/lxqt.conf "$HOME/.config/lxqt/lxqt.conf"
}


lxqt_theme_lush_main () {
	lxqt_theme_lush_check
	lxqt_theme_lush_clone
	lxqt_theme_lush_install
	lxqt_theme_lush_config
}


lxqt_theme_lush_main

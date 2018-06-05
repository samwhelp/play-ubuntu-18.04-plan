#!/usr/bin/env bash


lxqt_theme_arc_dark_clone () {
	git clone https://github.com/gabretana/lxqt-arc-dark-theme.git
}


lxqt_theme_arc_dark_check () {
	if [ -e /usr/share/lxqt/themes/arc-dark ]; then
		echo
		echo 'Directory exits: /usr/share/lxqt/themes/arc-dark'
		echo 'Please remove /usr/share/lxqt/themes/arc-dark first!'
		echo
		echo 'sudo rm /usr/share/lxqt/themes/arc-dark -rf'
		echo 'or'
		echo 'sudo mv /usr/share/lxqt/themes/arc-dark ./arc-dark.bak'
		exit 1
	fi
}


lxqt_theme_arc_dark_install () {
	sudo cp ./lxqt-arc-dark-theme/arc-dark /usr/share/lxqt/themes/arc-dark -a
	sudo chown root.root /usr/share/lxqt/themes/arc-dark -R
}


lxqt_theme_arc_dark_config () {
	cp ./config/lxqt/lxqt.conf "$HOME/.config/lxqt/lxqt.conf"
}


lxqt_theme_arc_dark_main () {
	lxqt_theme_arc_dark_check
	lxqt_theme_arc_dark_clone
	lxqt_theme_arc_dark_install
	lxqt_theme_arc_dark_config
}


lxqt_theme_arc_dark_main

#!/usr/bin/env bash


lxqt_theme_archlinux_dark_clone () {
	git clone https://github.com/stefonarch/archlinux-dark.git
}


lxqt_theme_archlinux_dark_check () {
	if [ -e /usr/share/lxqt/themes/archlinux-dark ]; then
		echo
		echo 'Directory exits: /usr/share/lxqt/themes/archlinux-dark'
		echo 'Please remove /usr/share/lxqt/themes/archlinux-dark first!'
		echo
		echo 'sudo rm /usr/share/lxqt/themes/archlinux-dark -rf'
		echo 'or'
		echo 'sudo mv /usr/share/lxqt/themes/archlinux-dark ./archlinux-dark.bak'
		exit 1
	fi
}


lxqt_theme_archlinux_dark_install () {
	sudo cp ./archlinux-dark /usr/share/lxqt/themes/archlinux-dark -a
	sudo chown root.root /usr/share/lxqt/themes/archlinux-dark -R
}


lxqt_theme_archlinux_dark_config () {
	cp ./config/lxqt/lxqt.conf "$HOME/.config/lxqt/lxqt.conf"
}


lxqt_theme_archlinux_dark_main () {
	lxqt_theme_archlinux_dark_check
	lxqt_theme_archlinux_dark_clone
	lxqt_theme_archlinux_dark_install
	lxqt_theme_archlinux_dark_config
}


lxqt_theme_archlinux_dark_main

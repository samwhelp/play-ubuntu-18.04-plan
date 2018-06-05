#!/usr/bin/env bash


lxqt_theme_less_clone () {
	git clone https://github.com/gabretana/lxqt-less-theme.git
}


lxqt_theme_less_check () {
	if [ -e /usr/share/lxqt/themes/less ]; then
		echo
		echo 'Directory exits: /usr/share/lxqt/themes/less'
		echo 'Please remove /usr/share/lxqt/themes/less first!'
		echo
		echo 'sudo rm /usr/share/lxqt/themes/less -rf'
		echo 'or'
		echo 'sudo mv /usr/share/lxqt/themes/less ./less.bak'
		exit 1
	fi
}


lxqt_theme_less_install () {
	sudo cp ./lxqt-less-theme/less /usr/share/lxqt/themes/less -a
	sudo chown root.root /usr/share/lxqt/themes/less -R
}


lxqt_theme_less_config () {
	cp ./config/lxqt/lxqt.conf "$HOME/.config/lxqt/lxqt.conf"
}


lxqt_theme_less_main () {
	lxqt_theme_less_check
	lxqt_theme_less_clone
	lxqt_theme_less_install
	lxqt_theme_less_config
}


lxqt_theme_less_main

#!/usr/bin/env bash


lxqt_theme_adapta_clone () {
	git clone https://github.com/aevernum/Adapta-LXQt.git
}


lxqt_theme_adapta_check () {
	if [ -e /usr/share/lxqt/themes/adapta ]; then
		echo
		echo 'Directory exits: /usr/share/lxqt/themes/adapta'
		echo 'Please remove /usr/share/lxqt/themes/adapta first!'
		echo
		echo 'sudo rm /usr/share/lxqt/themes/adapta -rf'
		echo 'or'
		echo 'sudo mv /usr/share/lxqt/themes/adapta ./adapta.bak'
		exit 1
	fi
}


lxqt_theme_adapta_install () {
	sudo cp ./Adapta-LXQt /usr/share/lxqt/themes/adapta -a
	sudo chown root.root /usr/share/lxqt/themes/adapta -R
}


lxqt_theme_adapta_config () {
	cp ./config/lxqt/lxqt.conf "$HOME/.config/lxqt/lxqt.conf"
}


lxqt_theme_adapta_main () {
	lxqt_theme_adapta_check
	lxqt_theme_adapta_clone
	lxqt_theme_adapta_install
	lxqt_theme_adapta_config
}


lxqt_theme_adapta_main

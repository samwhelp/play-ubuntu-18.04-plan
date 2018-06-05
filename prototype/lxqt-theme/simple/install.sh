#!/usr/bin/env bash


lxqt_theme_simple_clone () {
	git clone https://github.com/stefonarch/simple.git
}


lxqt_theme_simple_check () {
	if [ -e /usr/share/lxqt/themes/simple ]; then
		echo
		echo 'Directory exits: /usr/share/lxqt/themes/simple'
		echo 'Please remove /usr/share/lxqt/themes/simple first!'
		echo
		echo 'sudo rm /usr/share/lxqt/themes/simple -rf'
		echo 'or'
		echo 'sudo mv /usr/share/lxqt/themes/simple ./simple.bak'
		exit 1
	fi
}


lxqt_theme_simple_install () {
	sudo cp ./simple /usr/share/lxqt/themes/simple -a
	sudo chown root.root /usr/share/lxqt/themes/simple -R
}


lxqt_theme_simple_config () {
	cp ./config/lxqt/lxqt.conf "$HOME/.config/lxqt/lxqt.conf"
}


lxqt_theme_simple_main () {
	lxqt_theme_simple_check
	lxqt_theme_simple_clone
	lxqt_theme_simple_install
	lxqt_theme_simple_config
}


lxqt_theme_simple_main

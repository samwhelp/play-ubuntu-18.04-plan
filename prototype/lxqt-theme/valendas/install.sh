#!/usr/bin/env bash


lxqt_theme_valendas_clone () {
	git clone https://github.com/stefonarch/Valendas.git
}


lxqt_theme_valendas_check () {
	if [ -e /usr/share/lxqt/themes/valendas ]; then
		echo
		echo 'Directory exits: /usr/share/lxqt/themes/valendas'
		echo 'Please remove /usr/share/lxqt/themes/valendas first!'
		echo
		echo 'sudo rm /usr/share/lxqt/themes/valendas -rf'
		echo 'or'
		echo 'sudo mv /usr/share/lxqt/themes/valendas ./valendas.bak'
		exit 1
	fi
}


lxqt_theme_valendas_install () {
	sudo cp ./Valendas /usr/share/lxqt/themes/valendas -a
	sudo chown root.root /usr/share/lxqt/themes/valendas -R
}


lxqt_theme_valendas_config () {
	cp ./config/lxqt/lxqt.conf "$HOME/.config/lxqt/lxqt.conf"
}


lxqt_theme_valendas_main () {
	lxqt_theme_valendas_check
	lxqt_theme_valendas_clone
	lxqt_theme_valendas_install
	lxqt_theme_valendas_config
}


lxqt_theme_valendas_main

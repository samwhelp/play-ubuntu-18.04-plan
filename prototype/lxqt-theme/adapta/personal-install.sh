#!/usr/bin/env bash


lxqt_theme_adapta_clone () {
	git clone https://github.com/aevernum/Adapta-LXQt.git
}


lxqt_theme_adapta_check () {
	mkdir -p "$HOME/.local/share/lxqt/themes"

	if [ -e "$HOME/.local/share/lxqt/themes/adapta" ]; then
		echo
		echo 'Directory exits: ~/.local/share/lxqt/themes/adapta'
		echo 'Please remove ~/.local/share/lxqt/themes/adapta first!'
		echo
		echo 'sudo rm ~/.local/share/lxqt/themes/adapta -rf'
		echo 'or'
		echo 'sudo mv ~/.local/share/lxqt/themes/adapta ./adapta.bak'
		exit 1
	fi
}


lxqt_theme_adapta_install () {
	cp ./Adapta-LXQt "$HOME/.local/share/lxqt/themes/adapta" -a
}


lxqt_theme_adapta_config () {
	mkdir -p "$HOME/.config/lxqt"

	cp ./config/lxqt/lxqt.conf "$HOME/.config/lxqt/lxqt.conf"
}


lxqt_theme_adapta_main () {
	lxqt_theme_adapta_check
	lxqt_theme_adapta_clone
	lxqt_theme_adapta_install
	lxqt_theme_adapta_config
}


lxqt_theme_adapta_main

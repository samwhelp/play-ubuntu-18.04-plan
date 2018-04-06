#!/usr/bin/env bash

miniconda_is_exist_bashrc () {
	grep '### Head: miniconda' "$HOME/.bashrc" -q
}

miniconda_config_bashrc () {
	if miniconda_is_exist_bashrc; then
		return
	fi

	echo
	echo "cat ./config/bashrc.part.bash >> $HOME/.bashrc"
	cat "./config/bashrc.part.bash" >> "$HOME/.bashrc"

	## recover
	## cp "/etc/skel/.bashrc" "$HOME/.bashrc"
}

miniconda_config_bashrc_main () {
	miniconda_config_bashrc
}

miniconda_config_bashrc_main

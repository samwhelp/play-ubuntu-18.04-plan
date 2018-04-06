#!/usr/bin/env bash

anaconda_is_exist_bashrc () {
	grep '### Head: anaconda' "$HOME/.bashrc" -q
}

anaconda_config_bashrc () {
	if anaconda_is_exist_bashrc; then
		return
	fi

	echo
	echo "cat ./config/bashrc.part.bash >> $HOME/.bashrc"
	cat "./config/bashrc.part.bash" >> "$HOME/.bashrc"

	## recover
	## cp "/etc/skel/.bashrc" "$HOME/.bashrc"
}

anaconda_config_bashrc_main () {
	anaconda_config_bashrc
}

anaconda_config_bashrc_main

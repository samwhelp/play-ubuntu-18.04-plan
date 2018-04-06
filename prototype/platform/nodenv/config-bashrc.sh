#!/usr/bin/env bash

nodenv_is_exist_bashrc () {
	grep '### Head: nodenv' "$HOME/.bashrc" -q
}

nodenv_config_bashrc () {
	if nodenv_is_exist_bashrc; then
		return
	fi

	echo
	echo "cat ./config/bashrc.part.bash >> $HOME/.bashrc"
	cat "./config/bashrc.part.bash" >> "$HOME/.bashrc"

	## recover
	## cp "/etc/skel/.bashrc" "$HOME/.bashrc"
}

nodenv_config_bashrc_main () {
	nodenv_config_bashrc
}

nodenv_config_bashrc_main

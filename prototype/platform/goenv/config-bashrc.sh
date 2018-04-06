#!/usr/bin/env bash

goenv_is_exist_bashrc () {
	grep '### Head: goenv' "$HOME/.bashrc" -q
}

goenv_config_bashrc () {
	if goenv_is_exist_bashrc; then
		return
	fi

	echo
	echo "cat ./config/bashrc.part.bash >> $HOME/.bashrc"
	cat "./config/bashrc.part.bash" >> "$HOME/.bashrc"

	## recover
	## cp "/etc/skel/.bashrc" "$HOME/.bashrc"
}

goenv_config_bashrc_main () {
	goenv_config_bashrc
}

goenv_config_bashrc_main

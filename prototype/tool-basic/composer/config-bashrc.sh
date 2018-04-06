#!/usr/bin/env bash

composer_is_exist_bashrc () {
	grep '### Head: composer' "$HOME/.bashrc" -q
}

composer_config_bashrc () {
	if composer_is_exist_bashrc; then
		return
	fi

	echo
	echo "cat ./config/bashrc.part.bash >> $HOME/.bashrc"
	cat "./config/bashrc.part.bash" >> "$HOME/.bashrc"

	## recover
	## cp "/etc/skel/.bashrc" "$HOME/.bashrc"
}

composer_config_bashrc_main () {
	composer_config_bashrc
}

composer_config_bashrc_main

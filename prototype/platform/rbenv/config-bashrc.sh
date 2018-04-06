#!/usr/bin/env bash

rbenv_is_exist_bashrc () {
	grep '### Head: rbenv' "$HOME/.bashrc" -q
}

rbenv_config_bashrc () {
	if rbenv_is_exist_bashrc; then
		return
	fi

	echo
	echo "cat ./config/bashrc.part.bash >> $HOME/.bashrc"
	cat "./config/bashrc.part.bash" >> "$HOME/.bashrc"

	## recover
	## cp "/etc/skel/.bashrc" "$HOME/.bashrc"
}

rbenv_config_bashrc_main () {
	rbenv_config_bashrc
}

rbenv_config_bashrc_main

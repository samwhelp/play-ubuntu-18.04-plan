#!/usr/bin/env bash

pyenv_is_exist_bashrc () {
	grep '### Head: pyenv' "$HOME/.bashrc" -q
}

pyenv_config_bashrc () {
	if pyenv_is_exist_bashrc; then
		return
	fi

	echo
	echo "cat ./config/bashrc.part.bash >> $HOME/.bashrc"
	cat "./config/bashrc.part.bash" >> "$HOME/.bashrc"

	## recover
	## cp "/etc/skel/.bashrc" "$HOME/.bashrc"
}

pyenv_config_bashrc_main () {
	pyenv_config_bashrc
}

pyenv_config_bashrc_main

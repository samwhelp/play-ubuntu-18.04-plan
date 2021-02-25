#!/usr/bin/env bash

luaenv_is_exist_bashrc () {
	grep '### Head: luaenv' "$HOME/.bashrc" -q
}

luaenv_config_bashrc () {
	if luaenv_is_exist_bashrc; then
		return
	fi

	echo
	echo "cat ./config/bashrc.part.bash >> $HOME/.bashrc"
	cat "./config/bashrc.part.bash" >> "$HOME/.bashrc"

	## recover
	## cp "/etc/skel/.bashrc" "$HOME/.bashrc"
}

luaenv_config_bashrc_main () {
	luaenv_config_bashrc
}

luaenv_config_bashrc_main

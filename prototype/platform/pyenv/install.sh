#!/usr/bin/env bash

pyenv_apt_install () {
	sudo apt-get install git build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm
}

pyenv_clone_repo () {
	if [ -d "$HOME/.pyenv" ]; then
		return
	fi

	## https://github.com/pyenv/pyenv

	## clone
	echo
	echo "git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv"
	git clone "https://github.com/pyenv/pyenv.git" "$HOME/.pyenv"
}

pyenv_init_source_install () {
	mkdir -p "$HOME/app/pyenv"

	cp "./config/source.sh" "$HOME/app/pyenv/source.sh"
}

pyenv_install_main () {
	pyenv_apt_install
	pyenv_clone_repo
	pyenv_init_source_install
}

pyenv_install_main

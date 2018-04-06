#!/usr/bin/env bash

goenv_apt_install () {
	sudo apt-get install git build-essential
}

goenv_clone_repo () {
	if [ -d "$HOME/.goenv" ]; then
		return
	fi

	## https://github.com/syndbg/goenv

	## clone
	echo
	echo "git clone https://github.com/syndbg/goenv.git $HOME/.goenv"
	git clone "https://github.com/syndbg/goenv.git" "$HOME/.goenv"
}

goenv_init_source_install () {
	mkdir -p "$HOME/app/goenv"

	cp "./config/source.sh" "$HOME/app/goenv/source.sh"
}

go_init_workspace_dir () {
	mkdir -p "$HOME/app/go/workspace"
}

goenv_install_main () {
	goenv_apt_install
	goenv_clone_repo
	goenv_init_source_install
	go_init_workspace_dir
}

goenv_install_main

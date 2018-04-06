#!/usr/bin/env bash

nodenv_apt_install () {
	sudo apt-get install git build-essential
}

nodenv_clone_repo () {
	if [ -d "$HOME/.nodenv" ]; then
		return
	fi

	## https://github.com/nodenv/nodenv

	## clone
	echo
	echo "git clone https://github.com/nodenv/nodenv.git $HOME/.nodenv"
	git clone "https://github.com/nodenv/nodenv.git" "$HOME/.nodenv"
}

nodenv_build_clone_repo () {
	if [ -d "$HOME/.nodenv/plugins/node-build" ]; then
		return
	fi

	## https://github.com/nodenv/node-build

	## clone
	echo
	echo "git clone https://github.com/nodenv/node-build.git $HOME/.nodenv/plugins/node-build"
	git clone "https://github.com/nodenv/node-build.git" "$HOME/.nodenv/plugins/node-build"

}

nodenv_init_source_install () {
	mkdir -p "$HOME/app/nodenv"

	cp "./config/source.sh" "$HOME/app/nodenv/source.sh"
}

nodenv_install_main () {
	nodenv_apt_install
	nodenv_clone_repo
	nodenv_build_clone_repo
	nodenv_init_source_install
}

nodenv_install_main

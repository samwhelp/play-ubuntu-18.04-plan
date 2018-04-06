#!/usr/bin/env bash

rbenv_apt_install () {
	sudo apt-get install git autoconf bison build-essential libssl-dev libyaml-dev libreadline-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm-dev
}

rbenv_clone_repo () {
	if [ -d "$HOME/.rbenv" ]; then
		return
	fi

	## https://github.com/rbenv/rbenv

	## clone
	echo
	echo "git clone https://github.com/rbenv/rbenv.git $HOME/.rbenv"
	git clone "https://github.com/rbenv/rbenv.git" "$HOME/.rbenv"
}

rbenv_build_clone_repo () {
	if [ -d "$HOME/.rbenv/plugins/ruby-build" ]; then
		return
	fi

	## https://github.com/rbenv/ruby-build

	## clone
	echo
	echo "git clone https://github.com/rbenv/ruby-build.git $HOME/.rbenv/plugins/ruby-build"
	git clone "https://github.com/rbenv/ruby-build.git" "$HOME/.rbenv/plugins/ruby-build"

}

rbenv_init_source_install () {
	mkdir -p "$HOME/app/rbenv"

	cp "./config/source.sh" "$HOME/app/rbenv/source.sh"
}

rbenv_install_main () {
	rbenv_apt_install
	rbenv_clone_repo
	rbenv_build_clone_repo
	rbenv_init_source_install
}

rbenv_install_main

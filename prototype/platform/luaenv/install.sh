#!/usr/bin/env bash

luaenv_apt_install () {
	sudo apt-get install git build-essential
}

luaenv_clone_repo () {
	if [ -d "$HOME/.luaenv" ]; then
		return
	fi

	## https://github.com/cehoffman/luaenv

	## clone
	echo
	echo "git clone https://github.com/cehoffman/luaenv.git $HOME/.luaenv"
	git clone "https://github.com/cehoffman/luaenv.git" "$HOME/.luaenv"
}

luaenv_build_clone_repo () {
	if [ -d "$HOME/.luaenv/plugins/lua-build" ]; then
		return
	fi

	## https://github.com/cehoffman/lua-build

	## clone
	echo
	echo "git clone https://github.com/cehoffman/lua-build.git $HOME/.luaenv/plugins/lua-build"
	git clone "https://github.com/cehoffman/lua-build.git" "$HOME/.luaenv/plugins/lua-build"

}

luaenv_luarocks_clone_repo () {
	if [ -d "$HOME/.luaenv/plugins/luaenv-luarocks" ]; then
		return
	fi

	## https://github.com/xpol/luaenv-luarocks

	## clone
	echo
	echo "git clone https://github.com/xpol/luaenv-luarocks.git $HOME/.luaenv/plugins/luaenv-luarocks"
	git clone "https://github.com/xpol/luaenv-luarocks.git" "$HOME/.luaenv/plugins/luaenv-luarocks"

}

luaenv_init_source_install () {
	mkdir -p "$HOME/app/luaenv"

	cp "./config/source.sh" "$HOME/app/luaenv/source.sh"
}

luaenv_install_main () {
	#luaenv_apt_install
	luaenv_clone_repo
	luaenv_build_clone_repo
	luaenv_luarocks_clone_repo
	luaenv_init_source_install
}

luaenv_install_main

#!/usr/bin/env bash

set -e


################################################################################
### Head: sakura
##
sakura_config_install () {
	mkdir -p "$HOME/.config/sakura"
	echo "mkdir -p $HOME/.config/sakura"

	cp "./config/sakura/sakura.conf" "$HOME/.config/sakura/sakura.conf"
	echo "cp ./config/sakura/sakura.conf $HOME/.config/sakura/sakura.conf"


	sakura_put_my_desktop_entry
}

sakura_put_my_desktop_entry () {
	mkdir -p "$HOME/.local/share/applications"
	echo "mkdir -p $HOME/.local/share/applications"

	cp "/usr/share/applications/sakura.desktop" "$HOME/.local/share/applications/sakura.desktop"
	echo "cp /usr/share/applications/sakura.desktop $HOME/.local/share/applications/sakura.desktop"

	sed -i 's/^Exec=sakura/Exec=sakura -m/g' "$HOME/.local/share/applications/sakura.desktop"
	echo "sed -i 's/^Exec=sakura/Exec=sakura -m/g' $HOME/.local/share/applications/sakura.desktop"
}
##
### Tail: sakura
################################################################################


################################################################################
### Head: sakura
##
zero_session_config_install () {

	## install
	sudo install -m 644 "./config/zero-session/zero-session.desktop" "/usr/share/xsessions/zero-session.desktop"
	sudo install -m 755 "./config/zero-session/zero-session.sh" "/usr/bin/zero-session.sh"

	echo "Install:"

	## check
	ls -l "/usr/share/xsessions/zero-session.desktop"
	ls -l "/usr/bin/zero-session.sh"

}
##
### Tail: sakura
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	sakura_config_install

	zero_session_config_install

}
## start
main_config_install

##
### Tail: main
################################################################################

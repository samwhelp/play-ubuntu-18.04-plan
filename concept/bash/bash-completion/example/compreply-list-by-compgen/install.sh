#!/usr/bin/env bash


################################################################################
### Head: Model Install
##

install_script () {

	mkdir -p "$HOME/bin"

	echo "install -m 755 ./demo $HOME/bin/demo"
	install -m 755 "./demo" "$HOME/bin/demo"

}

install_completion  () {

	echo "sudo install -m 644 ./demo-completion /etc/bash_completion.d/demo-completion"
	sudo install -m 644 "./demo-completion" "/etc/bash_completion.d/demo-completion"

}

show_tips () {
	echo
	echo 'Install complete.'
	echo 'Then please run:'
	echo '$ source ~/.bashrc'
}

##
### Tail: Model Install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	install_script

	install_completion

	show_tips

}

__main__

##
### Tail: Main
################################################################################

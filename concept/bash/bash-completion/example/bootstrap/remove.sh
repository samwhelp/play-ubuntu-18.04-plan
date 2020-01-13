#!/usr/bin/env bash


################################################################################
### Head: Model Remove
##

remove_completion  () {

	echo "sudo rm -f /etc/bash_completion.d/demo-completion"
	sudo rm -f "/etc/bash_completion.d/demo-completion"

}

show_tips () {
	echo
	echo 'Remove complete.'
}

##
### Tail: Model Remove
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	remove_completion

	show_tips

}

__main__

##
### Tail: Main
################################################################################

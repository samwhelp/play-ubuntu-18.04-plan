

### Head: main #################################################################
#
atom_app_remove () {
	echo
	echo "### Head: atom_app_remove ######################################################"
	echo "#"

	atom_app_remove_apt_remove

	echo "#"
	echo "### Tail: atom_app_remove ######################################################"
	echo
}
#
### Tail: main #################################################################


### Head: atom #################################################################
#
atom_app_remove_apt_remove () {
	echo "sudo apt-get purge atom"
	sudo apt-get purge atom
}
#
### Tail: main #################################################################



### Head: main #################################################################
#
chrome_app_remove () {
	echo
	echo "### Head: chrome_app_remove ######################################################"
	echo "#"

	## chrome_app_remove_apt_remove

	echo "#"
	echo "### Tail: chrome_app_remove ######################################################"
	echo
}
#
### Tail: main #################################################################


### Head: chrome #################################################################
#
chrome_app_remove_apt_remove () {
	echo "sudo apt-get remove google-chrome-stable"
	sudo apt-get remove google-chrome-stable
}
#
### Tail: main #################################################################

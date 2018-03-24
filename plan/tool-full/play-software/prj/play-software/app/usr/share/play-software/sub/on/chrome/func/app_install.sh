

### Head: main #################################################################
#
chrome_app_install () {
	echo
	echo "### Head: chrome_app_install #####################################################"
	echo "#"

	chrome_app_install_create_dir
	chrome_app_install_download_deb
	chrome_app_install_install_deb

	echo "#"
	echo "### Tail: chrome_app_install #####################################################"
	echo
}
#
### Tail: main #################################################################


### Head: chrome #################################################################
#
chrome_app_install_create_dir () {
	echo
	echo "mkdir -p $HOME/tmp/chrome"
	mkdir -p "$HOME/tmp/chrome"

	cd "$HOME/tmp/chrome"
}

chrome_app_install_download_deb () {
	## https://github.com/chrome/chrome/releases
	## https://chrome.io/

	echo
	echo "wget -c 'https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb'"
	wget -c 'https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb'


	echo
	echo "dpkg -I google-chrome-stable_current_amd64.deb"
	dpkg -I google-chrome-stable_current_amd64.deb

}

chrome_app_install_install_deb () {

	#if ! command -v gdebi > /dev/null; then
	#	echo
	#	echo "sudo apt-get install gdebi-core"
	#	sudo apt-get install gdebi-core
	#fi

	if ! type -p gdebi > /dev/null; then
		echo
		echo "sudo apt-get install gdebi-core"
		sudo apt-get install gdebi-core
	fi


	echo
	echo "sudo gdebi --n google-chrome-stable_current_amd64.deb"
	sudo gdebi --n google-chrome-stable_current_amd64.deb
}
#
### Head: chrome ################################################################

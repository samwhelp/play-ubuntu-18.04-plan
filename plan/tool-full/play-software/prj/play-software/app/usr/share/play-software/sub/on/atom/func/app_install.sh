

### Head: main #################################################################
#
atom_app_install () {
	echo
	echo "### Head: atom_app_install #####################################################"
	echo "#"

	atom_app_install_create_dir
	atom_app_install_download_deb
	atom_app_install_install_deb

	echo "#"
	echo "### Tail: atom_app_install #####################################################"
	echo
}
#
### Tail: main #################################################################


### Head: atom #################################################################
#
atom_app_install_create_dir () {
	echo
	echo "mkdir -p $HOME/tmp/atom"
	mkdir -p "$HOME/tmp/atom"

	cd "$HOME/tmp/atom"
}

atom_app_install_download_deb () {
	## https://github.com/atom/atom/releases
	## https://atom.io/

	echo
	echo "wget -c 'https://atom.io/download/deb' -O atom-amd64.deb"
	wget -c 'https://atom.io/download/deb' -O atom-amd64.deb


	echo
	echo "dpkg -I atom-amd64.deb"
	dpkg -I atom-amd64.deb

}

atom_app_install_install_deb () {

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
	echo "sudo gdebi --n atom-amd64.deb"
	sudo gdebi --n atom-amd64.deb
}
#
### Head: atom ################################################################



### Head: main #################################################################
#
noto_app_install () {
	echo
	echo "### Head: noto_app_install #####################################################"
	echo "#"

	noto_app_install_prepare
	noto_app_install_create_dir
	noto_app_install_download
	noto_app_install_install
	noto_app_install_update

	echo "#"
	echo "### Tail: noto_app_install #####################################################"
	echo
}
#
### Tail: main #################################################################


### Head: noto #################################################################
#
noto_app_install_prepare () {
	#if ! command -v unzip > /dev/null; then
	#	echo "sudo apt-get install unzip -y"
	#	sudo apt-get install unzip -y
	#fi

	if ! type -p unzip > /dev/null; then
		echo "sudo apt-get install unzip -y"
		sudo apt-get install unzip -y
	fi
}

noto_app_install_create_dir () {
	echo
	echo "mkdir -p $HOME/tmp/noto"
	mkdir -p "$HOME/tmp/noto"

	cd "$HOME/tmp/noto"

}

noto_app_install_download () {

	if [ -e "./Noto" ]; then
		echo
		echo "rm -rf ./Noto"
		rm -rf "./Noto"
	fi


	# * https://www.google.com/get/noto/
	# * https://www.google.com/get/noto/help/install/

	echo
	echo "wget -c 'https://noto-website-2.storage.googleapis.com/pkgs/Noto-hinted.zip'"
	wget -c 'https://noto-website-2.storage.googleapis.com/pkgs/Noto-hinted.zip'


	echo
	echo "unzip Noto-hinted.zip -d Noto"
	unzip Noto-hinted.zip -d Noto

}

noto_app_install_install () {
	if [ -e /usr/local/share/fonts/Noto ]; then
		echo
		echo 'sudo rm /usr/local/share/fonts/Noto -rf'
		sudo rm /usr/local/share/fonts/Noto -rf
	fi


	echo
	echo "sudo mv Noto /usr/local/share/fonts/"
	sudo mv Noto /usr/local/share/fonts/


	echo
	echo "sudo chown root:staff /usr/local/share/fonts/Noto -R"
	sudo chown root:staff /usr/local/share/fonts/Noto -R


	echo
	echo "sudo chmod 644 /usr/local/share/fonts/Noto/*"
	sudo chmod 644 /usr/local/share/fonts/Noto/*


	echo
	echo "sudo chmod 755 /usr/local/share/fonts/Noto"
	sudo chmod 755 /usr/local/share/fonts/Noto


	echo
	echo "ls /usr/local/share/fonts -l | grep Noto"
	ls /usr/local/share/fonts -l | grep Noto


	echo
	echo "ls /usr/local/share/fonts/Noto"
	ls /usr/local/share/fonts/Noto -l

}

noto_app_install_update () {
	echo
	echo "sudo fc-cache -fv"
	sudo fc-cache -fv


	echo
	echo "fc-match -a | grep Noto"
	fc-match -a | grep Noto


	echo
	echo "fc-list | grep Noto"
	fc-list | grep Noto


	#fc-match -a | grep CJK
	#fc-list | grep CJK

}
#
### Tail: noto #################################################################

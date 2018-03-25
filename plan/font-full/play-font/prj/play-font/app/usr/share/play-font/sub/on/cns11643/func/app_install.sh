

### Head: main #################################################################
#
cns11643_app_install () {
	echo
	echo "### Head: cns11643_app_install #####################################################"
	echo "#"

	cns11643_app_install_prepare
	cns11643_app_install_create_dir
	cns11643_app_install_download
	cns11643_app_install_install
	cns11643_app_install_update

	echo "#"
	echo "### Tail: cns11643_app_install #####################################################"
	echo
}
#
### Tail: main #################################################################


### Head: cns11643 #############################################################
#
cns11643_app_install_prepare () {
	#if ! command -v unzip > /dev/null; then
	#	echo "sudo apt-get install unzip -y"
	#	sudo apt-get install unzip -y
	#fi

	if ! type -p unzip > /dev/null; then
		echo "sudo apt-get install unzip -y"
		sudo apt-get install unzip -y
	fi
}

cns11643_app_install_create_dir () {
	echo
	echo "mkdir -p $HOME/tmp/cns11643"
	mkdir -p "$HOME/tmp/cns11643"

	cd "$HOME/tmp/cns11643"

}

cns11643_app_install_download () {

	if [ -e "./Open_Data" ]; then
		echo
		echo "rm -rf ./Open_Data"
		rm -rf "./Open_Data"
	fi

	if [ -e "./CNS11643" ]; then
		echo
		echo "rm -rf ./CNS11643"
		rm -rf "./CNS11643"
	fi

	# * http://data.gov.tw/node/5961
	# * http://data.gov.tw/node/gov/resource/27234
	# * http://www.cns11643.gov.tw/


	echo
	echo "wget -c 'http://www.cns11643.gov.tw/AIDB/Open_Data.zip'"
	wget -c 'http://www.cns11643.gov.tw/AIDB/Open_Data.zip'


	echo
	echo "unzip -O big5 Open_Data.zip"
	unzip -O big5 Open_Data.zip


	echo
	echo "mv ./Open_Data/Fonts ./CNS11643"
	mv ./Open_Data/Fonts ./CNS11643

}

cns11643_app_install_install () {
	if [ -e /usr/local/share/fonts/CNS11643 ]; then
		echo
		echo 'sudo rm /usr/local/share/fonts/CNS11643 -rf'
		sudo rm /usr/local/share/fonts/CNS11643 -rf
	fi


	echo
	echo "sudo mv CNS11643 /usr/local/share/fonts/"
	sudo mv CNS11643 /usr/local/share/fonts/


	echo
	echo "sudo chown root:staff /usr/local/share/fonts/CNS11643 -R"
	sudo chown root:staff /usr/local/share/fonts/CNS11643 -R


	echo
	echo "sudo chmod 644 /usr/local/share/fonts/CNS11643/*"
	sudo chmod 644 /usr/local/share/fonts/CNS11643/*


	echo
	echo "sudo chmod 755 /usr/local/share/fonts/CNS11643"
	sudo chmod 755 /usr/local/share/fonts/CNS11643


	echo
	echo "ls /usr/local/share/fonts -l | grep CNS11643"
	ls /usr/local/share/fonts -l | grep CNS11643


	echo
	echo "ls /usr/local/share/fonts/CNS11643"
	ls /usr/local/share/fonts/CNS11643 -l

}

cns11643_app_install_update () {
	echo
	echo "sudo fc-cache -fv"
	sudo fc-cache -fv


	echo
	echo "fc-match -a | grep TW"
	fc-match -a | grep TW


	echo
	echo "fc-list | grep TW"
	fc-list | grep TW


}
#
### Tail: cns11643 #############################################################



### Head: main #################################################################
#
noto_app_remove () {
	echo
	echo "### Head: noto_app_remove ######################################################"
	echo "#"

	noto_app_remove_remove
	noto_app_remove_update

	echo "#"
	echo "### Tail: noto_app_remove ######################################################"
	echo
}
#
### Tail: main #################################################################


### Head: noto #################################################################
#
noto_app_remove_remove () {

	if [ -e /usr/local/share/fonts/Noto ]; then
		echo
		echo 'sudo rm /usr/local/share/fonts/Noto -rf'
		sudo rm /usr/local/share/fonts/Noto -rf
	fi

}

noto_app_remove_update () {
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

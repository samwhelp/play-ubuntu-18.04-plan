

### Head: main #################################################################
#
cns11643_app_remove () {
	echo
	echo "### Head: cns11643_app_remove ##################################################"
	echo "#"

	cns11643_app_remove_remove
	cns11643_app_remove_update

	echo "#"
	echo "### Tail: cns11643_app_remove ##################################################"
	echo
}
#
### Tail: main #################################################################


### Head: cns11643 #############################################################
#
cns11643_app_remove_remove () {

	if [ -e /usr/local/share/fonts/CNS11643 ]; then
		echo
		echo 'sudo rm /usr/local/share/fonts/CNS11643 -rf'
		sudo rm /usr/local/share/fonts/CNS11643 -rf
	fi

}

cns11643_app_remove_update () {
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

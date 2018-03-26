

### Head: main #################################################################
#
locale_conf_set () {
	echo
	echo "### Head: locale_conf_set ######################################################"
	echo "#"

	locale_conf_set_config

	echo "#"
	echo "### Tail: locale_conf_set ######################################################"
	echo
}
#
### Tail: main #################################################################


### Head: locale ###############################################################
#
locale_conf_set_config () {

	echo
	echo "sudo cp $THE_SUB_ON_DIR_PATH/locale/conf/set/locale /etc/default/locale"
	sudo cp "$THE_SUB_ON_DIR_PATH/locale/conf/set/locale" "/etc/default/locale"


	echo
	echo "cat /etc/default/locale"
	cat /etc/default/locale


	echo
	echo "locale"
	locale

}
#
### Tail: locale ###############################################################

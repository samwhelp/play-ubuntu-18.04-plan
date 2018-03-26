

### Head: main #################################################################
#
apt_conf_set () {
	echo
	echo "### Head: apt_conf_set #########################################################"
	echo "#"

	apt_conf_set_config

	echo "#"
	echo "### Tail: apt_conf_set #########################################################"
	echo
}
#
### Tail: main #################################################################


### Head: apt ##################################################################
#
apt_conf_set_config () {

	#echo
	#echo "sudo cp $THE_SUB_ON_DIR_PATH/apt/conf/set/us/sources.list /etc/apt/sources.list"
	#sudo cp "$THE_SUB_ON_DIR_PATH/apt/conf/set/us/sources.list" "/etc/apt/sources.list"

	echo
	echo "sudo cp $THE_SUB_ON_DIR_PATH/apt/conf/set/tw/sources.list /etc/apt/sources.list"
	sudo cp "$THE_SUB_ON_DIR_PATH/apt/conf/set/tw/sources.list" "/etc/apt/sources.list"


	echo
	echo "cat /etc/apt/sources.list"
	cat /etc/apt/sources.list


	#echo
	#echo 'sudo apt-get update'
	#sudo apt-get update

}
#
### Tail: apt ##################################################################



### Head: main #################################################################
#
compton_conf_reset () {
	echo
	echo "### Head: compton_conf_reset ###################################################"
	echo "#"

	compton_conf_reset_dir_create
	compton_conf_reset_config

	echo "#"
	echo "### Tail: compton_conf_reset ###################################################"
	echo
}
#
### Tail: main #################################################################


### Head: compton ################################################################
#
compton_conf_reset_dir_create () {

	echo "mkdir -p $HOME/.config/compton"
	mkdir -p "$HOME/.config/compton"

}

compton_conf_reset_config () {

	echo "cp $THE_SUB_ON_DIR_PATH/compton/conf/reset/compton.conf $HOME/.config/compton/compton.conf"
	cp "$THE_SUB_ON_DIR_PATH/compton/conf/reset/compton.conf" "$HOME/.config/compton/compton.conf"

}
#
### Tail: compton ################################################################

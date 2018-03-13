

### Head: main #################################################################
#
i3_conf_reset () {
	echo
	echo "### Head: i3_conf_reset ########################################################"
	echo "#"

	i3_conf_reset_dir_create
	i3_conf_reset_config

	echo "#"
	echo "### Tail: i3_conf_reset ########################################################"
	echo
}
#
### Tail: main #################################################################


### Head: i3 ################################################################
#
i3_conf_reset_dir_create () {
	echo "mkdir -p $HOME/.config/i3"
	mkdir -p $HOME/.config/i3
}

i3_conf_reset_config () {
	echo "cp $THE_SUB_ON_DIR_PATH/i3/conf/reset/config $HOME/.config/i3/config"
	cp "$THE_SUB_ON_DIR_PATH/i3/conf/reset/config" "$HOME/.config/i3/config"
}
#
### Tail: i3 ################################################################

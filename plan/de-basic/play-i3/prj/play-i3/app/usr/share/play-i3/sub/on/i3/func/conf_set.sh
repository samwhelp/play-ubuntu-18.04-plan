

### Head: main #################################################################
#
i3_conf_set () {
	echo
	echo "### Head: i3_conf_set ##########################################################"
	echo "#"

	i3_conf_set_dir_create
	i3_conf_set_config

	echo "#"
	echo "### Tail: i3_conf_set ##########################################################"
	echo
}
#
### Tail: main #################################################################


### Head: i3 ################################################################
#
i3_conf_set_dir_create () {
	echo "mkdir -p $HOME/.config/i3"
	mkdir -p $HOME/.config/i3
}

i3_conf_set_config () {
	echo "cp $THE_SUB_ON_DIR_PATH/i3/conf/set/config $HOME/.config/i3/config"
	cp "$THE_SUB_ON_DIR_PATH/i3/conf/set/config" "$HOME/.config/i3/config"
}
#
### Tail: i3 ################################################################

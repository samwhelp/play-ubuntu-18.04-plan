

### Head: main #################################################################
#
qterminal_conf_reset () {
	echo
	echo "### Head: qterminal_conf_reset #################################################"
	echo "#"

	qterminal_conf_reset_dir_create
	qterminal_conf_reset_config

	echo "#"
	echo "### Tail: qterminal_conf_reset #################################################"
	echo
}
#
### Tail: main #################################################################


### Head: qterminal ################################################################
#
qterminal_conf_reset_dir_create () {
	echo "mkdir -p $HOME/.config/qterminal.org"
	mkdir -p $HOME/.config/qterminal.org
}

qterminal_conf_reset_config () {
	echo "cp $THE_SUB_ON_DIR_PATH/qterminal/conf/reset/qterminal.ini $HOME/.config/qterminal.org/qterminal.ini"
	cp "$THE_SUB_ON_DIR_PATH/qterminal/conf/reset/qterminal.ini" "$HOME/.config/qterminal.org/qterminal.ini"
}
#
### Tail: qterminal ################################################################

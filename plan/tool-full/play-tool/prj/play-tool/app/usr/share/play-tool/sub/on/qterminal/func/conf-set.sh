

### Head: main #################################################################
#
qterminal_conf_set () {
	echo
	echo "### Head: qterminal_conf_set ###################################################"
	echo "#"

	qterminal_conf_set_dir_create
	qterminal_conf_set_config

	echo "#"
	echo "### Tail: qterminal_conf_set ###################################################"
	echo
}
#
### Tail: main #################################################################


### Head: qterminal ################################################################
#
qterminal_conf_set_dir_create () {
	echo "mkdir -p $HOME/.config/qterminal.org"
	mkdir -p $HOME/.config/qterminal.org
}

qterminal_conf_set_config () {
	echo "cp $THE_SUB_ON_DIR_PATH/qterminal/conf/set/qterminal.ini $HOME/.config/qterminal.org/qterminal.ini"
	cp "$THE_SUB_ON_DIR_PATH/qterminal/conf/set/qterminal.ini" "$HOME/.config/qterminal.org/qterminal.ini"
}
#
### Tail: qterminal ################################################################

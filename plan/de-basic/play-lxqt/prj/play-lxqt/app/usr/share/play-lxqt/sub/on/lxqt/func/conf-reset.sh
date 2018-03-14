

### Head: main #################################################################
#
lxqt_conf_reset () {
	echo
	echo "### Head: lxqt_conf_reset ######################################################"
	echo "#"

	lxqt_conf_reset_dir_create
	lxqt_conf_reset_config

	echo "#"
	echo "### Tail: lxqt_conf_reset ######################################################"
	echo
}
#
### Tail: main #################################################################


### Head: lxqt #################################################################
#
lxqt_conf_reset_dir_create () {
	echo "mkdir -p $HOME/.config/lxqt"
	mkdir -p "$HOME/.config/lxqt"
}

lxqt_conf_reset_config () {
	echo "cp $THE_SUB_ON_DIR_PATH/lxqt/conf/reset/lxqt.conf $HOME/.config/lxqt/lxqt.conf"
	cp "$THE_SUB_ON_DIR_PATH/lxqt/conf/reset/lxqt.conf" "$HOME/.config/lxqt/lxqt.conf"
}
#
### Tail: lxqt #################################################################

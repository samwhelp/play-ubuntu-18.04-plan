

### Head: main #################################################################
#
lxqt_conf_set () {
	echo
	echo "### Head: lxqt_conf_set ########################################################"
	echo "#"

	lxqt_conf_set_dir_create
	lxqt_conf_set_config

	echo "#"
	echo "### Tail: lxqt_conf_set ########################################################"
	echo
}
#
### Tail: main #################################################################


### Head: lxqt #################################################################
#
lxqt_conf_set_dir_create () {
	echo "mkdir -p $HOME/.config/lxqt"
	mkdir -p "$HOME/.config/lxqt"
}

lxqt_conf_set_config () {

	echo "cp $THE_SUB_ON_DIR_PATH/lxqt/conf/set/globalkeyshortcuts.conf $HOME/.config/lxqt/globalkeyshortcuts.conf"
	cp "$THE_SUB_ON_DIR_PATH/lxqt/conf/set/globalkeyshortcuts.conf" "$HOME/.config/lxqt/globalkeyshortcuts.conf"

	echo "cp $THE_SUB_ON_DIR_PATH/lxqt/conf/set/lxqt.conf $HOME/.config/lxqt/lxqt.conf"
	cp "$THE_SUB_ON_DIR_PATH/lxqt/conf/set/lxqt.conf" "$HOME/.config/lxqt/lxqt.conf"

	echo "cp $THE_SUB_ON_DIR_PATH/lxqt/conf/set/panel.conf $HOME/.config/lxqt/panel.conf"
	cp "$THE_SUB_ON_DIR_PATH/lxqt/conf/set/panel.conf" "$HOME/.config/lxqt/panel.conf"

	echo "cp $THE_SUB_ON_DIR_PATH/lxqt/conf/set/session.conf $HOME/.config/lxqt/session.conf"
	cp "$THE_SUB_ON_DIR_PATH/lxqt/conf/set/session.conf" "$HOME/.config/lxqt/session.conf"

}
#
### Tail: lxqt #################################################################

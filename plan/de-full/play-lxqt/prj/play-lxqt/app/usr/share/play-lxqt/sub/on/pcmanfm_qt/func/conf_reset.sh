

### Head: main #################################################################
#
pcmanfm_qt_conf_reset () {
	echo
	echo "### Head: pcmanfm_qt_conf_reset ################################################"
	echo "#"

	pcmanfm_qt_conf_reset_dir_create
	pcmanfm_qt_conf_reset_config

	echo "#"
	echo "### Tail: pcmanfm_qt_conf_reset ################################################"
	echo
}
#
### Tail: main #################################################################


### Head: pcmanfm_qt ###########################################################
#
pcmanfm_qt_conf_reset_dir_create () {
	echo "mkdir -p $HOME/.config/pcmanfm-qt/lxqt"
	mkdir -p "$HOME/.config/pcmanfm-qt/lxqt"

	echo "mkdir -p $HOME/.config/pcmanfm-qt/default"
	mkdir -p "$HOME/.config/pcmanfm-qt/default"
}

pcmanfm_qt_conf_reset_config () {

	echo "cp $THE_SUB_ON_DIR_PATH/pcmanfm_qt/conf/reset/lxqt/settings.conf $HOME/.config/pcmanfm-qt/lxqt/settings.conf"
	cp "$THE_SUB_ON_DIR_PATH/pcmanfm_qt/conf/reset/lxqt/settings.conf" "$HOME/.config/pcmanfm-qt/lxqt/settings.conf"

	echo "cp $THE_SUB_ON_DIR_PATH/pcmanfm_qt/conf/reset/default/settings.conf $HOME/.config/pcmanfm-qt/default/settings.conf"
	cp "$THE_SUB_ON_DIR_PATH/pcmanfm_qt/conf/reset/default/settings.conf" "$HOME/.config/pcmanfm-qt/default/settings.conf"


}
#
### Tail: pcmanfm_qt ###########################################################

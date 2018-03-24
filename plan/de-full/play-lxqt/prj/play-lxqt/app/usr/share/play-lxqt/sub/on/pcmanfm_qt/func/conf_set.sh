

### Head: main #################################################################
#
pcmanfm_qt_conf_set () {
	echo
	echo "### Head: pcmanfm_qt_conf_set ##################################################"
	echo "#"

	pcmanfm_qt_conf_set_dir_create
	pcmanfm_qt_conf_set_config

	echo "#"
	echo "### Tail: pcmanfm_qt_conf_set ##################################################"
	echo
}
#
### Tail: main #################################################################


### Head: pcmanfm_qt ###########################################################
#
pcmanfm_qt_conf_set_dir_create () {
	echo "mkdir -p $HOME/.config/pcmanfm-qt/lxqt"
	mkdir -p "$HOME/.config/pcmanfm-qt/lxqt"

	echo "mkdir -p $HOME/.config/pcmanfm-qt/default"
	mkdir -p "$HOME/.config/pcmanfm-qt/default"

}

pcmanfm_qt_conf_set_config () {

	echo "cp $THE_SUB_ON_DIR_PATH/pcmanfm_qt/conf/set/lxqt/settings.conf $HOME/.config/pcmanfm-qt/lxqt/settings.conf"
	cp "$THE_SUB_ON_DIR_PATH/pcmanfm_qt/conf/set/lxqt/settings.conf" "$HOME/.config/pcmanfm-qt/lxqt/settings.conf"

	echo "cp $THE_SUB_ON_DIR_PATH/pcmanfm_qt/conf/set/default/settings.conf $HOME/.config/pcmanfm-qt/default/settings.conf"
	cp "$THE_SUB_ON_DIR_PATH/pcmanfm_qt/conf/set/default/settings.conf" "$HOME/.config/pcmanfm-qt/default/settings.conf"


}
#
### Tail: pcmanfm_qt ###########################################################

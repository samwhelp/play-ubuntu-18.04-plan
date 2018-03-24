

### Head: main #################################################################
#
gtk3_conf_reset () {
	echo
	echo "### Head: gtk3_conf_reset ######################################################"
	echo "#"

	gtk3_conf_reset_dir_create
	gtk3_conf_reset_config

	echo "#"
	echo "### Tail: gtk3_conf_reset ######################################################"
	echo
}
#
### Tail: main #################################################################


### Head: gtk3 ################################################################
#
gtk3_conf_reset_dir_create () {
	echo "mkdir -p $HOME/.config/gtk-3.0"
	mkdir -p $HOME/.config/gtk-3.0
}

gtk3_conf_reset_config () {
	echo "cp $THE_SUB_ON_DIR_PATH/gtk3/conf/reset/settings.ini $HOME/.config/gtk-3.0/settings.ini"
	cp "$THE_SUB_ON_DIR_PATH/gtk3/conf/reset/settings.ini" "$HOME/.config/gtk-3.0/settings.ini"
}
#
### Tail: gtk3 ################################################################

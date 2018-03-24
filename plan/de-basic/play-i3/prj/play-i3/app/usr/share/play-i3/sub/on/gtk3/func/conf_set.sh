

### Head: main #################################################################
#
gtk3_conf_set () {
	echo
	echo "### Head: gtk3_conf_set ########################################################"
	echo "#"

	gtk3_conf_set_dir_create
	gtk3_conf_set_config

	echo "#"
	echo "### Tail: gtk3_conf_set ########################################################"
	echo
}
#
### Tail: main #################################################################


### Head: gtk3 ################################################################
#
gtk3_conf_set_dir_create () {
	echo "mkdir -p $HOME/.config/gtk-3.0"
	mkdir -p $HOME/.config/gtk-3.0
}

gtk3_conf_set_config () {
	echo "cp $THE_SUB_ON_DIR_PATH/gtk3/conf/set/settings.ini $HOME/.config/gtk-3.0/settings.ini"
	cp "$THE_SUB_ON_DIR_PATH/gtk3/conf/set/settings.ini" "$HOME/.config/gtk-3.0/settings.ini"
}
#
### Tail: gtk3 ################################################################

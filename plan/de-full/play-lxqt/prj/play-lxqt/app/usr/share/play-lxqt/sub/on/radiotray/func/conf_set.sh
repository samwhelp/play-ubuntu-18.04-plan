

### Head: main #################################################################
#
radiotray_conf_set () {
	echo
	echo "### Head: radiotray_conf_set ###################################################"
	echo "#"

	radiotray_conf_set_dir_create
	radiotray_conf_set_config

	echo "#"
	echo "### Tail: radiotray_conf_set ###################################################"
	echo
}
#
### Tail: main #################################################################


### Head: radiotray ################################################################
#
radiotray_conf_set_dir_create () {
	echo "mkdir -p $HOME/.local/share/radiotray"
	mkdir -p "$HOME/.local/share/radiotray"
}

radiotray_conf_set_config () {
	echo "cp $THE_SUB_ON_DIR_PATH/radiotray/conf/set/bookmarks.xml $HOME/.local/share/radiotray/bookmarks.xml"
	cp "$THE_SUB_ON_DIR_PATH/radiotray/conf/set/bookmarks.xml" "$HOME/.local/share/radiotray/bookmarks.xml"
}
#
### Tail: radiotray ################################################################

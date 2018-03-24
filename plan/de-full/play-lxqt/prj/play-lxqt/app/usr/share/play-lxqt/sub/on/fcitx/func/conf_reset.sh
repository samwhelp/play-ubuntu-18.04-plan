

### Head: main #################################################################
#
fcitx_conf_reset () {
	echo
	echo "### Head: fcitx_conf_reset #####################################################"
	echo "#"

	fcitx_conf_reset_dir_create
	fcitx_conf_reset_config
	fcitx_conf_reset_im_config

	echo "#"
	echo "### Tail: fcitx_conf_reset #####################################################"
	echo
}
#
### Tail: main #################################################################


### Head: fcitx ################################################################
#
fcitx_conf_reset_dir_create () {
	echo "mkdir -p $HOME/.config/fcitx"
	mkdir -p "$HOME/.config/fcitx"
}

fcitx_conf_reset_config () {
	echo "cp $THE_SUB_ON_DIR_PATH/fcitx/conf/reset/profile $HOME/.config/fcitx/profile"
	cp "$THE_SUB_ON_DIR_PATH/fcitx/conf/reset/profile" "$HOME/.config/fcitx/profile"
}

fcitx_conf_reset_im_config () {
	echo

	echo "im-config -n REMOVE"
	im-config -n REMOVE

	echo
}
#
### Tail: fcitx ################################################################

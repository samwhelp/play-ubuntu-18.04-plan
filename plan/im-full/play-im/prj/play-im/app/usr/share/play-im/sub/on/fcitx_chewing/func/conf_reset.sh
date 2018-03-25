

### Head: main #################################################################
#
fcitx_chewing_conf_reset () {
	echo
	echo "### Head: fcitx_chewing_conf_reset ######################################################"
	echo "#"

	fcitx_chewing_conf_reset_dir_create
	fcitx_chewing_conf_reset_config
	fcitx_chewing_conf_reset_im_config

	echo "#"
	echo "### Tail: fcitx_chewing_conf_reset ######################################################"
	echo
}
#
### Tail: main #################################################################


### Head: fcitx_chewing ################################################################
#
fcitx_chewing_conf_reset_dir_create () {

	echo
	echo "mkdir -p $HOME/.config/fcitx"
	mkdir -p $HOME/.config/fcitx

}

fcitx_chewing_conf_reset_config () {

	echo
	echo "cp $THE_SUB_ON_DIR_PATH/fcitx_chewing/conf/reset/profile $HOME/.config/fcitx/profile"
	cp "$THE_SUB_ON_DIR_PATH/fcitx_chewing/conf/reset/profile" "$HOME/.config/fcitx/profile"

}

fcitx_chewing_conf_reset_im_config () {
	echo

	echo "im-config -n REMOVE"
	im-config -n REMOVE

	echo
}
#
### Tail: fcitx_chewing ################################################################

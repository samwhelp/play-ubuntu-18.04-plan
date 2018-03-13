

### Head: main #################################################################
#
fcitx_conf_set () {
	echo
	echo "### Head: fcitx_conf_set #######################################################"
	echo "#"

	fcitx_conf_set_dir_create
	fcitx_conf_set_config
	fcitx_conf_set_im_config

	echo "#"
	echo "### Tail: fcitx_conf_set #######################################################"
	echo
}
#
### Tail: main #################################################################


### Head: fcitx ################################################################
#
fcitx_conf_set_dir_create () {
	echo "mkdir -p $HOME/.config/fcitx"
	mkdir -p $HOME/.config/fcitx
}

fcitx_conf_set_config () {
	echo "cp $THE_SUB_ON_DIR_PATH/fcitx/conf/set/profile $HOME/.config/fcitx/profile"
	cp "$THE_SUB_ON_DIR_PATH/fcitx/conf/set/profile" "$HOME/.config/fcitx/profile"
}

fcitx_conf_set_im_config () {
	echo

	echo "im-config -n fcitx"
	im-config -n fcitx

	echo "cat ~/.xinputrc"
	cat ~/.xinputrc

	echo
}
#
### Tail: fcitx ################################################################

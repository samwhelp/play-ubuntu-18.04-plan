

### Head: main #################################################################
#
fcitx_chewing_conf_set () {
	echo
	echo "### Head: fcitx_chewing_conf_set ########################################################"
	echo "#"

	fcitx_chewing_conf_set_dir_create
	fcitx_chewing_conf_set_config
	fcitx_chewing_conf_set_im_config

	echo "#"
	echo "### Tail: fcitx_chewing_conf_set ########################################################"
	echo
}
#
### Tail: main #################################################################


### Head: fcitx_chewing ################################################################
#
fcitx_chewing_conf_set_dir_create () {

	echo
	echo "mkdir -p $HOME/.config/fcitx"
	mkdir -p $HOME/.config/fcitx

}

fcitx_chewing_conf_set_config () {

	echo
	echo "cp $THE_SUB_ON_DIR_PATH/fcitx_chewing/conf/set/profile $HOME/.config/fcitx/profile"
	cp "$THE_SUB_ON_DIR_PATH/fcitx_chewing/conf/set/profile" "$HOME/.config/fcitx/profile"

}

fcitx_chewing_conf_set_im_config () {

	echo

	echo "im-config -n fcitx"
	im-config -n fcitx

	echo "cat ~/.xinputrc"
	cat ~/.xinputrc

	echo

}
#
### Tail: fcitx_chewing ################################################################

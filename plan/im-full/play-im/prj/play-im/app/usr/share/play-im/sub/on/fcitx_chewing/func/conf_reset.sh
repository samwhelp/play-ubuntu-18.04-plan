

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
	if fcitx_chewing_conf_reset_is_fcitx_running; then
		echo
		echo 'fcitx is running'
		fcitx_chewing_conf_reset_stop_fcitx
		fcitx_chewing_conf_reset_config_profile
		fcitx_chewing_conf_reset_start_fcitx
	else
		echo
		echo 'fcitx not running'
		fcitx_chewing_conf_reset_config_profile
		fcitx_chewing_conf_reset_start_fcitx
	fi
}

fcitx_chewing_conf_reset_config_profile () {

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
fcitx_chewing_conf_reset_im_config () {

	echo

	echo "im-config -n fcitx"
	im-config -n fcitx

	echo "cat ~/.xinputrc"
	cat ~/.xinputrc

	echo

}

fcitx_chewing_conf_reset_stop_fcitx () {
	echo
	echo "Stop fcitx"

	#qdbus org.fcitx.Fcitx /inputmethod org.fcitx.Fcitx.InputMethod.Exit

	killall -9 fcitx

}

fcitx_chewing_conf_reset_start_fcitx () {
	echo
	echo "Start fcitx"
	fcitx -r
}

fcitx_chewing_conf_reset_is_fcitx_running () {
	fcitx-remote &> /dev/null
	if [ "$?" = "0" ]; then
		return 0;
	else
		return 1;
	fi
}
#
### Tail: fcitx_chewing ################################################################

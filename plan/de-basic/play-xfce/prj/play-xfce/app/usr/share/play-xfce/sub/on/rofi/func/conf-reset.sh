

### Head: main #################################################################
#
rofi_conf_reset () {
	echo
	echo "### Head: rofi_conf_reset ######################################################"
	echo "#"

	rofi_conf_reset_dir_create
	rofi_conf_reset_config

	echo "#"
	echo "### Tail: rofi_conf_reset ######################################################"
	echo
}
#
### Tail: main #################################################################


### Head: rofi ################################################################
#
rofi_conf_reset_dir_create () {
	echo "mkdir -p $HOME/.config/rofi"
	mkdir -p $HOME/.config/rofi
}

rofi_conf_reset_config () {
	echo "cp $THE_SUB_ON_DIR_PATH/rofi/conf/reset/config $HOME/.config/rofi/config"
	cp "$THE_SUB_ON_DIR_PATH/rofi/conf/reset/config" "$HOME/.config/rofi/config"
}
#
### Tail: rofi ################################################################

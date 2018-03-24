

### Head: main #################################################################
#
rofi_conf_set () {
	echo
	echo "### Head: rofi_conf_set ########################################################"
	echo "#"

	rofi_conf_set_dir_create
	rofi_conf_set_config

	echo "#"
	echo "### Tail: rofi_conf_set ########################################################"
	echo
}
#
### Tail: main #################################################################


### Head: rofi ################################################################
#
rofi_conf_set_dir_create () {
	echo "mkdir -p $HOME/.config/rofi"
	mkdir -p $HOME/.config/rofi
}

rofi_conf_set_config () {
	echo "cp $THE_SUB_ON_DIR_PATH/rofi/conf/set/config $HOME/.config/rofi/config"
	cp "$THE_SUB_ON_DIR_PATH/rofi/conf/set/config" "$HOME/.config/rofi/config"
}
#
### Tail: rofi ################################################################

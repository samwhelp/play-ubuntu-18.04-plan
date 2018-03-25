

### Head: main #################################################################
#
fontfamily_conf_reset () {
	echo
	echo "### Head: fontfamily_conf_reset ################################################"
	echo "#"

	fontfamily_conf_reset_dir_create
	fontfamily_conf_reset_config
	fontfamily_conf_reset_info

	echo "#"
	echo "### Tail: fontfamily_conf_reset ################################################"
	echo
}
#
### Tail: main #################################################################


### Head: fontfamily ###########################################################
#
fontfamily_conf_reset_dir_create () {
	echo "mkdir -p $HOME/.config/fontconfig"
	mkdir -p $HOME/.config/fontconfig
}

fontfamily_conf_reset_config () {

	## personal
	#echo "cp $THE_SUB_ON_DIR_PATH/fontfamily/conf/reset/fonts.conf $HOME/.config/fontconfig/fonts.conf"
	#cp "$THE_SUB_ON_DIR_PATH/fontfamily/conf/reset/fonts.conf" "$HOME/.config/fontconfig/fonts.conf"


	## global
	echo "sudo cp $THE_SUB_ON_DIR_PATH/fontfamily/conf/reset/fonts.conf /etc/fonts/local.conf"
	sudo cp "$THE_SUB_ON_DIR_PATH/fontfamily/conf/reset/fonts.conf" "/etc/fonts/local.conf"

}

fontfamily_conf_reset_info () {
	## howto check
	#fc-match -a monospace | less
	#fc-match -a sans-serif | less
	#fc-match -a serif | less

	echo
	echo "fc-match monospace"
	fc-match monospace

	echo
	echo "fc-match sans-serif"
	fc-match sans-serif

	echo
	echo "fc-match serif"
	fc-match serif

	echo
	echo "howto get more info:"
	echo "fc-match -a monospace | less"
	echo "fc-match -a sans-serif | less"
	echo "fc-match -a serif | less"

}
#
### Tail: fontfamily ###########################################################



### Head: main #################################################################
#
fontfamily_conf_set () {
	echo
	echo "### Head: fontfamily_conf_set ########################################################"
	echo "#"

	fontfamily_conf_set_dir_create
	fontfamily_conf_set_config
	fontfamily_conf_set_info

	echo "#"
	echo "### Tail: fontfamily_conf_set ########################################################"
	echo
}
#
### Tail: main #################################################################


### Head: fontfamily ################################################################
#
fontfamily_conf_set_dir_create () {
	echo "mkdir -p $HOME/.config/fontconfig"
	mkdir -p $HOME/.config/fontconfig
}

fontfamily_conf_set_config () {

	## personal
	#echo "cp $THE_SUB_ON_DIR_PATH/fontfamily/conf/set/fonts.conf $HOME/.config/fontconfig/fonts.conf"
	#cp "$THE_SUB_ON_DIR_PATH/fontfamily/conf/set/fonts.conf" "$HOME/.config/fontconfig/fonts.conf"


	## global
	echo "sudo cp $THE_SUB_ON_DIR_PATH/fontfamily/conf/set/fonts.conf /etc/fonts/local.conf"
	sudo cp "$THE_SUB_ON_DIR_PATH/fontfamily/conf/set/fonts.conf" "/etc/fonts/local.conf"

}

fontfamily_conf_set_info () {
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
### Tail: fontfamily ################################################################

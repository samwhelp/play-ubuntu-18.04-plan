

### Head: main #################################################################
#
gtk2_conf_reset () {
	echo
	echo "### Head: gtk2_conf_reset ######################################################"
	echo "#"

	gtk2_conf_reset_config

	echo "#"
	echo "### Tail: gtk2_conf_reset ######################################################"
	echo
}
#
### Tail: main #################################################################


### Head: gtk2 ################################################################
#
gtk2_conf_reset_config () {
	echo "cp $THE_SUB_ON_DIR_PATH/gtk2/conf/reset/.gtkrc-2.0 $HOME/.gtkrc-2.0"
	cp "$THE_SUB_ON_DIR_PATH/gtk2/conf/reset/.gtkrc-2.0" "$HOME/.gtkrc-2.0"
}
#
### Tail: gtk2 ################################################################

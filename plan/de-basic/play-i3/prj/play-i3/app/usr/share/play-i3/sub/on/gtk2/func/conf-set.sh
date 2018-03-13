

### Head: main #################################################################
#
gtk2_conf_set () {
	echo
	echo "### Head: gtk2_conf_set ########################################################"
	echo "#"

	gtk2_conf_set_config

	echo "#"
	echo "### Tail: gtk2_conf_set ########################################################"
	echo
}
#
### Tail: main #################################################################


### Head: gtk2 ################################################################
#
gtk2_conf_set_config () {
	echo "cp $THE_SUB_ON_DIR_PATH/gtk2/conf/set/.gtkrc-2.0 $HOME/.gtkrc-2.0"
	cp "$THE_SUB_ON_DIR_PATH/gtk2/conf/set/.gtkrc-2.0" "$HOME/.gtkrc-2.0"
}
#
### Tail: gtk2 ################################################################



### Head: main #################################################################
#
compton_conf_set () {
	echo
	echo "### Head: compton_conf_set #####################################################"
	echo "#"

	compton_conf_set_dir_create
	compton_conf_set_config

	echo "#"
	echo "### Tail: compton_conf_set #####################################################"
	echo
}
#
### Tail: main #################################################################


### Head: compton ################################################################
#
compton_conf_set_dir_create () {

	echo "mkdir -p $HOME/.config/compton"
	mkdir -p "$HOME/.config/compton"

}

compton_conf_set_config () {

	echo "cp $THE_SUB_ON_DIR_PATH/compton/conf/set/compton.conf $HOME/.config/compton/compton.conf"
	cp "$THE_SUB_ON_DIR_PATH/compton/conf/set/compton.conf" "$HOME/.config/compton/compton.conf"

	## $ man compton
	## default_config_path: $HOME/.config/compton.conf
	## use_new_config_path: $HOME/.config/compton/compton.conf
	## exec_always compton --config ~/.config/compton/compton.conf  <-- please refer $HOME/.config/i3/config

	## [compton.sample.conf]
	## $ dpkg -L compton | grep conf
	## /usr/share/doc/compton/examples/compton.sample.conf
	## cp $(dpkg -L compton | grep conf) ~/.config/compton.conf
	## cp /usr/share/doc/compton/examples/compton.sample.conf ~/.config/compton.conf

}
#
### Tail: compton ################################################################



### Head: main #################################################################
#
tool_conf_set () {
	echo
	echo "### Head: tool_conf_set ########################################################"
	echo "#"

	#tool_conf_set_dir_create
	#tool_conf_set_config

	echo "#"
	echo "### Tail: tool_conf_set ########################################################"
	echo
}
#
### Tail: main #################################################################


### Head: tool #################################################################
#
tool_conf_set_dir_create () {
	echo "tool_conf_set_dir_create"

	#echo "mkdir -p $HOME/.config/tool"
	#mkdir -p "$HOME/.config/tool"

}

tool_conf_set_config () {
	echo "tool_conf_set_config"

	#echo "cp $THE_SUB_ON_DIR_PATH/tool/conf/set/tool.conf $HOME/.config/tool/tool.conf"
	#cp "$THE_SUB_ON_DIR_PATH/tool/conf/set/tool.conf" "$HOME/.config/tool/tool.conf"

}
#
### Tail: tool #################################################################



### Head: main #################################################################
#
xfce4_conf_reset () {
	echo
	echo "### Head: xfce4_conf_reset #####################################################"
	echo "#"

	xfce4_conf_reset_dir_create
	xfce4_conf_reset_config

	echo "#"
	echo "### Tail: xfce4_conf_reset #####################################################"
	echo
}
#
### Tail: main #################################################################


### Head: xfce4 ################################################################
#
xfce4_conf_reset_dir_create () {
	#echo "mkdir -p $HOME/.config/xfce4"
	#mkdir -p "$HOME/.config/xfce4"

	echo "mkdir -p $HOME/.config/xfce4/xfconf/xfce-perchannel-xml"
	mkdir -p "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml"

	echo "mkdir -p $HOME/.config/xfce4/panel"
	mkdir -p "$HOME/.config/xfce4/panel"

}

xfce4_conf_reset_config () {

	echo "cp $THE_SUB_ON_DIR_PATH/xfce4/conf/reset/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml"
	cp "$THE_SUB_ON_DIR_PATH/xfce4/conf/reset/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml" "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml"

	echo "cp $THE_SUB_ON_DIR_PATH/xfce4/conf/reset/xfconf/xfce-perchannel-xml/xfwm4.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml"
	cp "$THE_SUB_ON_DIR_PATH/xfce4/conf/reset/xfconf/xfce-perchannel-xml/xfwm4.xml" "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml"

	echo "cp $THE_SUB_ON_DIR_PATH/xfce4/conf/reset/xfconf/xfce-perchannel-xml/xsettings.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml"
	cp "$THE_SUB_ON_DIR_PATH/xfce4/conf/reset/xfconf/xfce-perchannel-xml/xsettings.xml" "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml"

	echo "cp $THE_SUB_ON_DIR_PATH/xfce4/conf/reset/xfconf/xfce-perchannel-xml/xfce4-panel.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml"
	cp "$THE_SUB_ON_DIR_PATH/xfce4/conf/reset/xfconf/xfce-perchannel-xml/xfce4-panel.xml" "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml"

	echo "cp $THE_SUB_ON_DIR_PATH/xfce4/conf/reset/xfconf/xfce-perchannel-xml/xfce4-desktop.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml"
	cp "$THE_SUB_ON_DIR_PATH/xfce4/conf/reset/xfconf/xfce-perchannel-xml/xfce4-desktop.xml" "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml"

	echo "cp $THE_SUB_ON_DIR_PATH/xfce4/conf/reset/xfconf/xfce-perchannel-xml/keyboards.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/keyboards.xml"
	cp "$THE_SUB_ON_DIR_PATH/xfce4/conf/reset/xfconf/xfce-perchannel-xml/keyboards.xml" "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml/keyboards.xml"


	echo "cp $THE_SUB_ON_DIR_PATH/xfce4/conf/reset/panel/whiskermenu-1.rc $HOME/.config/xfce4/panel/whiskermenu-1.rc"
	cp "$THE_SUB_ON_DIR_PATH/xfce4/conf/reset/panel/whiskermenu-1.rc" "$HOME/.config/xfce4/panel/whiskermenu-1.rc"
}
#
### Tail: xfce4 ################################################################

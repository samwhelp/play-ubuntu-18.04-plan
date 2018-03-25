

### Head: main #################################################################
#
mousepad_conf_reset () {
	echo
	echo "### Head: mousepad_conf_reset ##################################################"
	echo "#"

	mousepad_conf_reset_config

	echo "#"
	echo "### Tail: mousepad_conf_reset ##################################################"
	echo
}
#
### Tail: main #################################################################


### Head: mousepad #############################################################
#
mousepad_conf_reset_config () {

	echo
	echo "gsettings reset org.xfce.mousepad.preferences.window always-show-tabs"
	gsettings reset org.xfce.mousepad.preferences.window always-show-tabs


	echo
	echo "gsettings reset org.xfce.mousepad.preferences.window toolbar-visible true"
	gsettings reset org.xfce.mousepad.preferences.window toolbar-visible


	echo
	echo "gsettings reset org.xfce.mousepad.preferences.window path-in-title true"
	gsettings reset org.xfce.mousepad.preferences.window path-in-title


	echo
	echo "gsettings reset org.xfce.mousepad.preferences.view highlight-current-line"
	gsettings reset org.xfce.mousepad.preferences.view highlight-current-line


	echo
	echo "gsettings reset org.xfce.mousepad.preferences.view show-right-margin"
	gsettings reset org.xfce.mousepad.preferences.view show-right-margin


	echo
	echo "gsettings reset org.xfce.mousepad.preferences.view show-line-numbers"
	gsettings reset org.xfce.mousepad.preferences.view show-line-numbers


	echo
	echo "gsettings reset org.xfce.mousepad.preferences.view match-braces"
	gsettings reset org.xfce.mousepad.preferences.view match-braces


	echo
	echo "gsettings reset org.xfce.mousepad.preferences.view insert-spaces"
	gsettings reset org.xfce.mousepad.preferences.view insert-spaces


	echo
	echo "gsettings reset org.xfce.mousepad.preferences.view tab-width"
	gsettings reset org.xfce.mousepad.preferences.view tab-width

	echo
	echo "gsettings reset org.xfce.mousepad.preferences.view auto-indent"
	gsettings reset org.xfce.mousepad.preferences.view auto-indent

}
#
### Tail: mousepad #############################################################

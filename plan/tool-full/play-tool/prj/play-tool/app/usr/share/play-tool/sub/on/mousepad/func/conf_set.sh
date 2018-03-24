

### Head: main #################################################################
#
mousepad_conf_set () {
	echo
	echo "### Head: mousepad_conf_set ####################################################"
	echo "#"

	mousepad_conf_set_config

	echo "#"
	echo "### Tail: mousepad_conf_set ####################################################"
	echo
}
#
### Tail: main #################################################################


### Head: mousepad #############################################################
#
mousepad_conf_set_config () {

	echo
	echo "gsettings set org.xfce.mousepad.preferences.window always-show-tabs true"
	gsettings set org.xfce.mousepad.preferences.window always-show-tabs true


	echo
	echo "gsettings set org.xfce.mousepad.preferences.window toolbar-visible true"
	gsettings set org.xfce.mousepad.preferences.window toolbar-visible true


	echo
	echo "gsettings set org.xfce.mousepad.preferences.window path-in-title true"
	gsettings set org.xfce.mousepad.preferences.window path-in-title true


	echo
	echo "gsettings set org.xfce.mousepad.preferences.view highlight-current-line true"
	gsettings set org.xfce.mousepad.preferences.view highlight-current-line true


	echo
	echo "gsettings set org.xfce.mousepad.preferences.view show-right-margin true"
	gsettings set org.xfce.mousepad.preferences.view show-right-margin true


	echo
	echo "gsettings set org.xfce.mousepad.preferences.view show-line-numbers true"
	gsettings set org.xfce.mousepad.preferences.view show-line-numbers true


	echo
	echo "gsettings set org.xfce.mousepad.preferences.view match-braces true"
	gsettings set org.xfce.mousepad.preferences.view match-braces true


	echo
	echo "gsettings set org.xfce.mousepad.preferences.view insert-spaces false"
	gsettings set org.xfce.mousepad.preferences.view insert-spaces false


	echo
	echo "gsettings set org.xfce.mousepad.preferences.view tab-width 4"
	gsettings set org.xfce.mousepad.preferences.view tab-width 4

	echo
	echo "gsettings set org.xfce.mousepad.preferences.view auto-indent true"
	gsettings set org.xfce.mousepad.preferences.view auto-indent true

}
#
### Tail: mousepad #############################################################

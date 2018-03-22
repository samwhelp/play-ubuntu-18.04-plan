

### Head: main #################################################################
#
gedit_conf_reset () {
	echo
	echo "### Head: gedit_conf_reset ######################################################"
	echo "#"

	gedit_conf_reset_config

	echo "#"
	echo "### Tail: gedit_conf_reset ######################################################"
	echo
}
#
### Tail: main #################################################################


### Head: gedit ################################################################
#
gedit_conf_reset_config () {

	echo "gsettings reset org.gnome.gedit.state.window side-panel-active-page"
	gsettings reset org.gnome.gedit.state.window side-panel-active-page

	echo "gsettings reset org.gnome.gedit.preferences.encodings candidate-encodings"
	gsettings reset org.gnome.gedit.preferences.encodings candidate-encodings

}
#
### Tail: gedit ################################################################

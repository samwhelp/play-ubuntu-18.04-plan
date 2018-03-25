

### Head: main #################################################################
#
ibus_chewing_conf_reset () {
	echo
	echo "### Head: ibus_chewing_conf_reset ######################################################"
	echo "#"

	ibus_chewing_conf_reset_im_config
	ibus_chewing_conf_reset_config

	echo "#"
	echo "### Tail: ibus_chewing_conf_reset ######################################################"
	echo
}
#
### Tail: main #################################################################


### Head: ibus_chewing ################################################################
#
ibus_chewing_conf_reset_im_config () {
	echo

	echo "im-config -n REMOVE"
	im-config -n REMOVE

	echo
}

ibus_chewing_conf_reset_config () {
	## gsettings list-recursively | grep ibus
	## gsettings list-recursively | grep ibus | grep chewing


	echo "gsettings reset org.freedesktop.ibus.general.hotkey triggers"
	gsettings reset org.freedesktop.ibus.general.hotkey triggers


	echo "gsettings reset org.freedesktop.ibus.general preload-engines"
	gsettings reset org.freedesktop.ibus.general preload-engines


}

#
### Tail: ibus_chewing ################################################################

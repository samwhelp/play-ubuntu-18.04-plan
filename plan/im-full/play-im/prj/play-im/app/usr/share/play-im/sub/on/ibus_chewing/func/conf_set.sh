

### Head: main #################################################################
#
ibus_chewing_conf_set () {
	echo
	echo "### Head: ibus_chewing_conf_set ########################################################"
	echo "#"

	ibus_chewing_conf_set_im_config
	ibus_chewing_conf_set_config
	
	echo "#"
	echo "### Tail: ibus_chewing_conf_set ########################################################"
	echo
}
#
### Tail: main #################################################################


### Head: ibus_chewing ################################################################
#
ibus_chewing_conf_set_im_config () {

	echo

	echo "im-config -n ibus"
	im-config -n ibus

	echo "cat ~/.xinputrc"
	cat ~/.xinputrc

	echo

}

ibus_chewing_conf_set_config () {
	## gsettings list-recursively | grep ibus
	## gsettings list-recursively | grep ibus | grep chewing


	echo "gsettings set org.freedesktop.ibus.general.hotkey triggers \"['<Control>space']\""
	gsettings set org.freedesktop.ibus.general.hotkey triggers "['<Control>space']"
	#gsettings reset org.freedesktop.ibus.general.hotkey triggers
	#gsettings get org.freedesktop.ibus.general.hotkey triggers


	echo "gsettings set org.freedesktop.ibus.general preload-engines \"['xkb:us::eng', 'chewing']\""
	gsettings set org.freedesktop.ibus.general preload-engines "['xkb:us::eng', 'chewing']"
	#gsettings reset org.freedesktop.ibus.general preload-engines
	#gsettings get org.freedesktop.ibus.general preload-engines

}
#
### Tail: ibus_chewing ################################################################



### Head: main #################################################################
#
gcin_conf_reset () {
	echo
	echo "### Head: gcin_conf_reset ######################################################"
	echo "#"

	gcin_conf_reset_im_config

	echo "#"
	echo "### Tail: gcin_conf_reset ######################################################"
	echo
}
#
### Tail: main #################################################################


### Head: gcin ################################################################
#
gcin_conf_reset_im_config () {
	echo

	echo "im-config -n REMOVE"
	im-config -n REMOVE

	echo
}
#
### Tail: gcin ################################################################

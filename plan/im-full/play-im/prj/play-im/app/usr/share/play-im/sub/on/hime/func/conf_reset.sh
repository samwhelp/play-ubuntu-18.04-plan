

### Head: main #################################################################
#
hime_conf_reset () {
	echo
	echo "### Head: hime_conf_reset ######################################################"
	echo "#"

	hime_conf_reset_im_config

	echo "#"
	echo "### Tail: hime_conf_reset ######################################################"
	echo
}
#
### Tail: main #################################################################


### Head: hime ################################################################
#
hime_conf_reset_im_config () {
	echo

	echo "im-config -n REMOVE"
	im-config -n REMOVE

	echo
}
#
### Tail: hime ################################################################

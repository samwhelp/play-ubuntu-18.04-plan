

### Head: main #################################################################
#
hime_conf_set () {
	echo
	echo "### Head: hime_conf_set ########################################################"
	echo "#"

	hime_conf_set_im_config

	echo "#"
	echo "### Tail: hime_conf_set ########################################################"
	echo
}
#
### Tail: main #################################################################


### Head: hime ################################################################
#
hime_conf_set_im_config () {

	echo

	echo "im-config -n hime"
	im-config -n hime

	echo "cat ~/.xinputrc"
	cat ~/.xinputrc

	echo

}
#
### Tail: hime ################################################################

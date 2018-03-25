

### Head: main #################################################################
#
gcin_conf_set () {
	echo
	echo "### Head: gcin_conf_set ########################################################"
	echo "#"

	gcin_conf_set_im_config

	echo "#"
	echo "### Tail: gcin_conf_set ########################################################"
	echo
}
#
### Tail: main #################################################################


### Head: gcin ################################################################
#
gcin_conf_set_im_config () {

	echo

	echo "im-config -n gcin"
	im-config -n gcin

	echo "cat ~/.xinputrc"
	cat ~/.xinputrc

	echo

}
#
### Tail: gcin ################################################################



### Head: main #################################################################
#
locale_gen_conf_set () {
	echo
	echo "### Head: locale_gen_conf_set ########################################################"
	echo "#"

	locale_gen_conf_set_config

	echo "#"
	echo "### Tail: locale_gen_conf_set ########################################################"
	echo
}
#
### Tail: main #################################################################


### Head: locale_gen ################################################################
#
locale_gen_conf_set_config () {
	#sudo locale-gen zh_TW.UTF-8
	sudo locale-gen zh_TW zh_TW.UTF-8 zh_CN.UTF-8 en_US.UTF-8

	# locale -a


	# which locale-gen
	# /usr/sbin/locale-gen
	# /etc/locale.gen
	# /usr/lib/locale/locale-archive
	# strings /usr/lib/locale/locale-archive| grep zh_TW



	# sudo dpkg-reconfigure locales
	# /var/lib/dpkg/info/locales.config
	# /var/lib/dpkg/info/locales.postinst
	# /var/lib/dpkg/info/locales.templates
	# /var/lib/dpkg/info/locales.prerm
}
#
### Tail: locale_gen ################################################################

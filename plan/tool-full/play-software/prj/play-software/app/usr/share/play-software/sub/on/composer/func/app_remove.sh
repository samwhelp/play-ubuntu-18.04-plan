

### Head: main #################################################################
#
composer_app_remove () {
	echo
	echo "### Head: composer_app_remove ######################################################"
	echo "#"

	composer_app_remove_create_dir
	composer_app_remove_remove_bin

	echo "#"
	echo "### Tail: composer_app_remove ######################################################"
	echo
}
#
### Tail: main #################################################################


### Head: composer #################################################################
#
composer_app_remove_create_dir () {
	echo
	echo "mkdir -p $HOME/bin"
	mkdir -p "$HOME/bin"

	cd "$HOME/bin"

}

composer_app_remove_remove_bin () {

	if [ -e $HOME/bin/composer ]; then
		echo
		echo 'rm $HOME/bin/composer'
		rm "$HOME/bin/composer"
	fi

}
#
### Tail: main #################################################################



### Head: main #################################################################
#
composer_app_install () {
	echo
	echo "### Head: composer_app_install #####################################################"
	echo "#"

	composer_app_install_prepare
	composer_app_install_create_dir
	composer_app_install_download_and_update

	echo "#"
	echo "### Tail: composer_app_install #####################################################"
	echo
}
#
### Tail: main #################################################################


### Head: composer #################################################################
#

composer_app_install_prepare () {
	#if ! command -v php > /dev/null; then
	#	sudo apt-get install php-cli
	#fi

	if ! type -p php > /dev/null; then
		echo "sudo apt-get install php-cli -y"
		sudo apt-get install php-cli -y
	fi
}

composer_app_install_create_dir () {
	echo
	echo "mkdir -p $HOME/bin"
	mkdir -p "$HOME/bin"

	cd "$HOME/bin"

}

composer_app_install_download_and_update () {

	if [ -e $HOME/bin/composer ]; then
		echo
		echo 'rm $HOME/bin/composer'
		rm "$HOME/bin/composer"
	fi

	#echo "wget -c "https://getcomposer.org/download/1.6.3/composer.phar" -O $HOME/bin/composer"
	#wget -c "https://getcomposer.org/download/1.6.3/composer.phar" -O $HOME/bin/composer
	#chmod u+x $HOME/bin/composer

	## https://getcomposer.org/download/
	echo
	echo "wget -c "https://getcomposer.org/composer.phar" -O $HOME/bin/composer"
	wget -c "https://getcomposer.org/composer.phar" -O $HOME/bin/composer
	chmod u+x "$HOME/bin/composer"


	echo
	echo "$HOME/bin/composer self-update"
	"$HOME/bin/composer" self-update


	echo
	echo "composer --version"
	"$HOME/bin/composer" --version
	#composer --version


	## ~/.config/composer/


}

#
### Head: composer ################################################################

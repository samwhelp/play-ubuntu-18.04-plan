#!/usr/bin/env bash

#if ! command -v phpx > /dev/null; then
#	sudo apt-get install php-cli
#fi

if ! type -p php > /dev/null; then
	sudo apt-get install php-cli
fi


echo "mkdir -p $HOME/bin"
mkdir -p $HOME/bin

if [ -e $HOME/bin/composer ]; then
	echo
	echo "File_exist: $HOME/bin/composer"
	echo "Please remove it frist:"
	echo 'rm $HOME/bin/composer'
	echo 'or'
	echo 'mv $HOME/bin/composer $HOME/bin/composer.bak'
	echo
	exit 1
fi


#echo "wget -c "https://getcomposer.org/download/1.6.3/composer.phar" -O $HOME/bin/composer"
#wget -c "https://getcomposer.org/download/1.6.3/composer.phar" -O $HOME/bin/composer
#chmod u+x $HOME/bin/composer

## https://getcomposer.org/download/
echo "wget -c "https://getcomposer.org/composer.phar" -O $HOME/bin/composer"
wget -c "https://getcomposer.org/composer.phar" -O $HOME/bin/composer
chmod u+x $HOME/bin/composer


echo "$HOME/bin/composer self-update"
$HOME/bin/composer self-update


echo "composer --version"
composer --version


## ~/.config/composer/

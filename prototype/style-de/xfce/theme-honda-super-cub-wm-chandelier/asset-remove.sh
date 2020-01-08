#!/usr/bin/env bash

set -e


################################################################################
### Head: theme
##
theme_asset_remove () {

	theme_asset_remove_theme_honda_super_cub
	theme_asset_remove_theme_chandelier

}

theme_asset_remove_theme_honda_super_cub () {

	rm -rf "$HOME/.themes/Honda-Super-Cub"
	echo "rm -rf $HOME/.themes/Honda-Super-Cub"

	echo

	# file "$HOME/.themes/Honda-Super-Cub"
	# ls -l "$HOME/.themes/Honda-Super-Cub"

}

theme_asset_remove_theme_chandelier () {

	rm -rf "$HOME/.themes/Chandelier"
	echo "rm -rf $HOME/.themes/Chandelier"

	echo

	# file "$HOME/.themes/Chandelier"
	# ls -l "$HOME/.themes/Chandelier"

}

##
### Tail: theme
################################################################################


################################################################################
### Head: main
##
main_asset_remove () {

	theme_asset_remove

}
## start
main_asset_remove

##
### Tail: main
################################################################################

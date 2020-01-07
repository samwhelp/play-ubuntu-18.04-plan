#!/usr/bin/env bash

set -e


################################################################################
### Head: theme
##
theme_asset_remove () {

	theme_asset_remove_theme_honda_super_cub
	theme_asset_remove_theme_rgapsline

}

theme_asset_remove_theme_honda_super_cub () {

	echo "rm -rf $HOME/.themes/Honda-Super-Cub"
	rm -rf "$HOME/.themes/Honda-Super-Cub"


	echo

	# file "$HOME/.themes/Honda-Super-Cub"
	# ls -l "$HOME/.themes/Honda-Super-Cub"

}

theme_asset_remove_theme_rgapsline () {

	echo "rm -rf $HOME/.themes/RGapsLine"
	rm -rf "$HOME/.themes/RGapsLine"

	echo

	# file "$HOME/.themes/RGapsLine"
	# ls -l "$HOME/.themes/RGapsLine"

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

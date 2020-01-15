#!/usr/bin/env bash

set -e


################################################################################
### Head: theme
##
theme_asset_remove () {

	theme_asset_remove_theme_sephia
	theme_asset_remove_theme_honda_super_cub
	theme_asset_remove_icon_nord_black_frost_numix

}

theme_asset_remove_theme_sephia () {

	echo "rm -rf $HOME/.themes/Sephia"
	rm -rf "$HOME/.themes/Sephia"

	echo

	#file "$HOME/.themes/Sephia"
	#ls -l "$HOME/.themes/Sephia"

}

theme_asset_remove_theme_honda_super_cub () {

	echo "rm -rf $HOME/.themes/Honda-Super-Cub"
	rm -rf "$HOME/.themes/Honda-Super-Cub"

	echo

	#file "$HOME/.themes/Honda-Super-Cub"
	#ls -l "$HOME/.themes/Honda-Super-Cub"

}

theme_asset_remove_icon_nord_black_frost_numix () {

	echo "rm -rf $HOME/.icons/Black-Frost-Numix"
	rm -rf "$HOME/.icons/Black-Frost-Numix"

	echo

	#file "$HOME/.icons/Black-Frost-Numix"
	#ls -l "$HOME/.icons/Black-Frost-Numix"

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

#!/usr/bin/env bash

set -e


################################################################################
### Head: theme
##
theme_asset_remove () {

	theme_asset_remove_theme_shades_of_gray
	theme_asset_remove_icon_nord_black_frost_suru

}

theme_asset_remove_theme_shades_of_gray () {

	echo "rm -rf $HOME/.themes/Shades-of-gray"
	rm -rf "$HOME/.themes/Shades-of-gray"

	echo

	#file "$HOME/.themes/Shades-of-gray"
	#ls -l "$HOME/.themes/Shades-of-gray"

}

theme_asset_remove_icon_nord_black_frost_suru () {

	echo "rm -rf $HOME/.icons/Black-Frost-Suru"
	rm -rf "$HOME/.icons/Black-Frost-Suru"

	echo

	#file "$HOME/.icons/Black-Frost-Suru"
	#ls -l "$HOME/.icons/Black-Frost-Suru"

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

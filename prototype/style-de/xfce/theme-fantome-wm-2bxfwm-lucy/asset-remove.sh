#!/usr/bin/env bash

set -e


################################################################################
### Head: theme
##
theme_asset_remove () {

	theme_asset_remove_theme_fantome
	theme_asset_remove_theme_2bxfwm_lucy
	theme_asset_remove_icon_nord_black_frost_suru

}

theme_asset_remove_theme_fantome () {

	rm -rf "$HOME/.themes/Fantome"
	echo "rm -rf $HOME/.themes/Fantome"

	echo

	# file "$HOME/.themes/Fantome"
	# ls -l "$HOME/.themes/Fantome"

}

theme_asset_remove_theme_2bxfwm_lucy () {

	rm -rf "$HOME/.themes/2bxfwm-Lucy"
	echo "rm -rf $HOME/.themes/2bxfwm-Lucy"

	echo

	# file "$HOME/.themes/2bxfwm-Lucy"
	# ls -l "$HOME/.themes/2bxfwm-Lucy"

}

theme_asset_remove_icon_nord_black_frost_suru () {

	rm -rf "$HOME/.icons/Black-Frost-Suru"
	echo "rm -rf $HOME/.icons/Black-Frost-Suru"

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

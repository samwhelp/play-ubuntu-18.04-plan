#!/usr/bin/env bash

set -e


################################################################################
### Head: theme
##
theme_asset_remove () {

	theme_asset_remove_theme_obsidian_2
	theme_asset_remove_icon_nord_black_frost_suru

}

theme_asset_remove_theme_obsidian_2 () {

	rm -rf "$HOME/.themes/Obsidian-2-Gray"
	echo "rm -rf $HOME/.themes/Obsidian-2-Gray"

	echo

	#file "$HOME/.themes/Obsidian-2-Gray"
	#ls -l "$HOME/.themes/Obsidian-2-Gray"

}

theme_asset_remove_icon_nord_black_frost_suru () {

	rm -rf "$HOME/.icons/Nord-Black-Frost-Suru"
	echo "rm -rf $HOME/.icons/Nord-Black-Frost-Suru"

	echo

	#file "$HOME/.icons/Nord-Black-Frost-Suru"
	#ls -l "$HOME/.icons/Nord-Black-Frost-Suru"

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

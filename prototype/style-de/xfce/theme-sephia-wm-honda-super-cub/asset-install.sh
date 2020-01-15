#!/usr/bin/env bash

#set -e


################################################################################
### Head: theme
##
theme_asset_install () {

	theme_asset_install_theme_sephia
	theme_asset_install_theme_honda_super_cub
	theme_asset_install_icon_nord_black_frost_numix

}


theme_asset_install_theme_sephia () {


	## https://github.com/addy-dclxvi/gtk-theme-collections/tree/master/Sephia


	git clone 'https://github.com/addy-dclxvi/gtk-theme-collections.git' 'asset/addy-dclxvi_gtk-theme-collections'
	echo "git clone 'https://github.com/addy-dclxvi/gtk-theme-collections.git' 'asset/addy-dclxvi_gtk-theme-collections'"


	#/usr/lib/x86_64-linux-gnu/xfce4/settings/appearance-install-theme 'asset/addy-dclxvi_gtk-theme-collections/Sephia'
	$(dpkg -L xfce4-settings | grep appearance-install-theme) 'asset/addy-dclxvi_gtk-theme-collections/Sephia'
	echo "$(dpkg -L xfce4-settings | grep appearance-install-theme) 'asset/addy-dclxvi_gtk-theme-collections/Sephia'"

	echo

	file "$HOME/.themes/Sephia"
	ls -l "$HOME/.themes/Sephia"

	echo

}

theme_asset_install_theme_honda_super_cub () {


	## https://github.com/reorr/my-theme-collection/tree/master/Honda%20Super%20Cub


	git clone 'https://github.com/reorr/my-theme-collection.git' 'asset/reorr_gtk-my-theme-collection'
	echo "git clone 'https://github.com/addy-dclxvi/gtk-theme-collections.git' 'asset/reorr_gtk-my-theme-collection'"


	#/usr/lib/x86_64-linux-gnu/xfce4/settings/appearance-install-theme 'asset/reorr_gtk-my-theme-collection/Honda Super Cub'
	$(dpkg -L xfce4-settings | grep appearance-install-theme) 'asset/reorr_gtk-my-theme-collection/Honda Super Cub'
	echo "$(dpkg -L xfce4-settings | grep appearance-install-theme) 'asset/reorr_gtk-my-theme-collection/Honda Super Cub'"

	echo

	file "$HOME/.themes/Honda-Super-Cub"
	ls -l "$HOME/.themes/Honda-Super-Cub"

	echo

}


theme_asset_install_icon_nord_black_frost_numix () {

	## https://www.gnome-look.org/search/projectSearchText/Nord-Black-Frost-Numix
	## https://www.gnome-look.org/p/1333828/
	## https://github.com/rtlewis88/rtl88-Themes/tree/Nord-Black-Frost/Black-Frost-Numix

	echo "git clone -b 'Nord-Black-Frost' 'https://github.com/rtlewis88/rtl88-Themes.git' 'asset/rtl88-Themes_Nord-Black-Frost'"
	git clone -b 'Nord-Black-Frost' 'https://github.com/rtlewis88/rtl88-Themes.git' 'asset/rtl88-Themes_Nord-Black-Frost'

	#/usr/lib/x86_64-linux-gnu/xfce4/settings/appearance-install-theme 'asset/rtl88-Themes_Nord-Black-Frost/Black-Frost-Numix'
	echo "$(dpkg -L xfce4-settings | grep appearance-install-theme) 'asset/rtl88-Themes_Nord-Black-Frost/Black-Frost-Numix'"
	$(dpkg -L xfce4-settings | grep appearance-install-theme) 'asset/rtl88-Themes_Nord-Black-Frost/Black-Frost-Numix'

	echo
	echo "gtk-update-icon-cache $HOME/.icons/Black-Frost-Numix"
	gtk-update-icon-cache "$HOME/.icons/Black-Frost-Numix"

	echo

	file "$HOME/.icons/Black-Frost-Numix"
	ls -l "$HOME/.icons/Black-Frost-Numix"

	echo

}


##
### Tail: theme
################################################################################


################################################################################
### Head: main
##
main_asset_install_prepare_dir () {
	mkdir -p 'asset'
}

main_asset_install () {

	main_asset_install_prepare_dir

	theme_asset_install


}
## start
main_asset_install

##
### Tail: main
################################################################################

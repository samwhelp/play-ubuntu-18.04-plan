#!/usr/bin/env bash

#set -e


################################################################################
### Head: theme
##
theme_asset_install () {

	theme_asset_install_theme_honda_super_cub
	theme_asset_install_theme_chandelier

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

theme_asset_install_theme_chandelier () {


	## https://github.com/addy-dclxvi/xfwm4-theme-collections/tree/master/Chandelier


	git clone 'https://github.com/addy-dclxvi/xfwm4-theme-collections.git' 'asset/addy-dclxvi_xfwm4-theme-collections'
	echo "git clone 'https://github.com/addy-dclxvi/xfwm4-theme-collections.git' 'asset/addy-dclxvi_xfwm4-theme-collections'"


	#/usr/lib/x86_64-linux-gnu/xfce4/settings/appearance-install-theme 'asset/addy-dclxvi_xfwm4-theme-collections/Chandelier'
	$(dpkg -L xfce4-settings | grep appearance-install-theme) 'asset/addy-dclxvi_xfwm4-theme-collections/Chandelier'
	echo "$(dpkg -L xfce4-settings | grep appearance-install-theme) 'asset/addy-dclxvi_xfwm4-theme-collections/Chandelier'"

	echo

	file "$HOME/.themes/Chandelier"
	ls -l "$HOME/.themes/Chandelier"

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

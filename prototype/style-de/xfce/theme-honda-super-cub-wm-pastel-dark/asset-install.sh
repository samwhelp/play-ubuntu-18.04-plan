#!/usr/bin/env bash

#set -e


################################################################################
### Head: theme
##
theme_asset_install () {

	theme_asset_install_theme_honda_super_cub
	theme_asset_install_theme_pastel_dark

}

theme_asset_install_theme_honda_super_cub () {


	## https://github.com/reorr/my-theme-collection/tree/master/Honda%20Super%20Cub

	echo "git clone 'https://github.com/addy-dclxvi/gtk-theme-collections.git' 'asset/reorr_gtk-my-theme-collection'"
	git clone 'https://github.com/reorr/my-theme-collection.git' 'asset/reorr_gtk-my-theme-collection'


	echo "$(dpkg -L xfce4-settings | grep appearance-install-theme) 'asset/reorr_gtk-my-theme-collection/Honda Super Cub'"
	#/usr/lib/x86_64-linux-gnu/xfce4/settings/appearance-install-theme 'asset/reorr_gtk-my-theme-collection/Honda Super Cub'
	$(dpkg -L xfce4-settings | grep appearance-install-theme) 'asset/reorr_gtk-my-theme-collection/Honda Super Cub'


	echo

	file "$HOME/.themes/Honda-Super-Cub"
	ls -l "$HOME/.themes/Honda-Super-Cub"

	echo

}

theme_asset_install_theme_pastel_dark () {

	# https://github.com/samwhelp/theme-xfwm4-collections/tree/master/themes/Pastel_Dark

	echo "git clone 'https://github.com/samwhelp/theme-xfwm4-collections.git' 'asset/samwhelp_theme-xfwm4-collections'"
	git clone 'https://github.com/samwhelp/theme-xfwm4-collections.git' 'asset/samwhelp_theme-xfwm4-collections'


	echo "$(dpkg -L xfce4-settings | grep appearance-install-theme) 'asset/samwhelp_theme-xfwm4-collections/themes/Pastel_Dark'"
	#/usr/lib/x86_64-linux-gnu/xfce4/settings/appearance-install-theme 'asset/samwhelp_theme-xfwm4-collections/themes/Pastel_Dark'
	$(dpkg -L xfce4-settings | grep appearance-install-theme) 'asset/samwhelp_theme-xfwm4-collections/themes/Pastel_Dark'


	echo

	file "$HOME/.themes/Pastel_Dark"
	ls -l "$HOME/.themes/Pastel_Dark"

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

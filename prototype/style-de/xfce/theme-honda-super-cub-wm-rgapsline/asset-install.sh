#!/usr/bin/env bash

#set -e


################################################################################
### Head: theme
##
theme_asset_install () {

	theme_asset_install_theme_honda_super_cub
	theme_asset_install_theme_rgapsline

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

theme_asset_install_theme_rgapsline () {

	# https://www.xfce-look.org/search/projectSearchText/RGapsLine
	# https://www.xfce-look.org/search/projectSearchText/RGaps
	# https://www.xfce-look.org/p/1174081/

	# https://www.xfce-look.org/p/1267505/
	# https://github.com/Drzaln/Nema/tree/master/RGapsLine

	echo "git clone 'https://github.com/Drzaln/Nema.git' 'asset/Drzaln_Nema'"
	git clone 'https://github.com/Drzaln/Nema.git' 'asset/Drzaln_Nema'


	echo "$(dpkg -L xfce4-settings | grep appearance-install-theme) 'asset/Drzaln_Nema/RGapsLine'"
	#/usr/lib/x86_64-linux-gnu/xfce4/settings/appearance-install-theme 'asset/Drzaln_Nema/RGapsLine'
	$(dpkg -L xfce4-settings | grep appearance-install-theme) 'asset/Drzaln_Nema/RGapsLine'


	echo

	file "$HOME/.themes/RGapsLine"
	ls -l "$HOME/.themes/RGapsLine"

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

#!/usr/bin/env bash

#set -e


################################################################################
### Head: theme
##
theme_asset_install () {

	theme_asset_install_theme_fantome
	theme_asset_install_theme_2bxfwm_lucy
	theme_asset_install_icon_nord_black_frost_suru

}

theme_asset_install_theme_fantome () {

	## https://www.gnome-look.org/search/projectSearchText/Fantome
	## https://www.gnome-look.org/p/1242276/
	## https://github.com/addy-dclxvi/gtk-theme-collections/tree/master/Fantome


	git clone 'https://github.com/addy-dclxvi/gtk-theme-collections.git' 'asset/addy-dclxvi_gtk-theme-collections'
	echo "git clone 'https://github.com/addy-dclxvi/gtk-theme-collections.git' 'asset/addy-dclxvi_gtk-theme-collections'"


	#/usr/lib/x86_64-linux-gnu/xfce4/settings/appearance-install-theme 'asset/addy-dclxvi_gtk-theme-collections/Fantome'
	$(dpkg -L xfce4-settings | grep appearance-install-theme) 'asset/addy-dclxvi_gtk-theme-collections/Fantome'
	echo "$(dpkg -L xfce4-settings | grep appearance-install-theme) 'asset/addy-dclxvi_gtk-theme-collections/Fantome'"

	echo

	file "$HOME/.themes/Fantome"
	ls -l "$HOME/.themes/Fantome"

	echo

}

theme_asset_install_theme_2bxfwm_lucy () {


	## https://github.com/addy-dclxvi/xfwm4-theme-collections/tree/master/2bxfwm-Lucy


	git clone 'https://github.com/addy-dclxvi/xfwm4-theme-collections.git' 'asset/addy-dclxvi_xfwm4-theme-collections'
	echo "git clone 'https://github.com/addy-dclxvi/xfwm4-theme-collections.git' 'asset/addy-dclxvi_xfwm4-theme-collections'"


	#/usr/lib/x86_64-linux-gnu/xfce4/settings/appearance-install-theme 'asset/addy-dclxvi_xfwm4-theme-collections/2bxfwm-Lucy'
	$(dpkg -L xfce4-settings | grep appearance-install-theme) 'asset/addy-dclxvi_xfwm4-theme-collections/2bxfwm-Lucy'
	echo "$(dpkg -L xfce4-settings | grep appearance-install-theme) 'asset/addy-dclxvi_xfwm4-theme-collections/2bxfwm-Lucy'"

	echo

	file "$HOME/.themes/2bxfwm-Lucy"
	ls -l "$HOME/.themes/2bxfwm-Lucy"

	echo

}


theme_asset_install_icon_nord_black_frost_suru () {

	## https://www.gnome-look.org/search/projectSearchText/Nord-Black-Frost-Suru
	## https://www.gnome-look.org/p/1333828/
	## https://github.com/rtlewis88/rtl88-Themes/tree/Nord-Black-Frost/Nord-Black-Frost-Suru

	echo "git clone -b 'Nord-Black-Frost' 'https://github.com/rtlewis88/rtl88-Themes.git' 'asset/rtl88-Themes_Nord-Black-Frost'"
	git clone -b 'Nord-Black-Frost' 'https://github.com/rtlewis88/rtl88-Themes.git' 'asset/rtl88-Themes_Nord-Black-Frost'

	#/usr/lib/x86_64-linux-gnu/xfce4/settings/appearance-install-theme 'asset/rtl88-Themes_Nord-Black-Frost/Black-Frost-Suru'
	echo "$(dpkg -L xfce4-settings | grep appearance-install-theme) 'asset/rtl88-Themes_Nord-Black-Frost/Black-Frost-Suru'"
	$(dpkg -L xfce4-settings | grep appearance-install-theme) 'asset/rtl88-Themes_Nord-Black-Frost/Black-Frost-Suru'


	echo
	echo "gtk-update-icon-cache $HOME/.icons/Black-Frost-Suru"
	gtk-update-icon-cache "$HOME/.icons/Black-Frost-Suru"

	echo

	file "$HOME/.icons/Black-Frost-Suru"
	ls -l "$HOME/.icons/Black-Frost-Suru"

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

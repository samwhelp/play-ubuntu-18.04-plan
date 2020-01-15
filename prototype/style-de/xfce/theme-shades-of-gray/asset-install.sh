#!/usr/bin/env bash

#set -e


################################################################################
### Head: theme
##
theme_asset_install () {

	theme_asset_install_theme_shades_of_gray
	theme_asset_install_icon_nord_black_frost_suru

}

theme_asset_install_theme_shades_of_gray () {

	## https://www.gnome-look.org/p/1244058/
	## https://github.com/WernerFP/Shades-of-gray-theme

	echo "git clone 'https://github.com/WernerFP/Shades-of-gray-theme.git' 'asset/WernerFP_Shades-of-gray-theme'"
	git clone 'https://github.com/WernerFP/Shades-of-gray-theme.git' 'asset/WernerFP_Shades-of-gray-theme'


	#/usr/lib/x86_64-linux-gnu/xfce4/settings/appearance-install-theme 'asset/WernerFP_Shades-of-gray-theme/Shades-of-gray'
	echo "$(dpkg -L xfce4-settings | grep appearance-install-theme) 'asset/WernerFP_Shades-of-gray-theme/Shades-of-gray'"
	$(dpkg -L xfce4-settings | grep appearance-install-theme) 'asset/WernerFP_Shades-of-gray-theme/Shades-of-gray'

	echo

	file "$HOME/.themes/Shades-of-gray"
	ls -l "$HOME/.themes/Shades-of-gray"

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

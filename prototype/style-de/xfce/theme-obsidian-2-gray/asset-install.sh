#!/usr/bin/env bash

#set -e


################################################################################
### Head: theme
##
theme_asset_install () {

	theme_asset_install_theme_obsidian_2
	theme_asset_install_icon_nord_black_frost_suru

}

theme_asset_install_theme_obsidian_2 () {

	## https://www.gnome-look.org/p/1173113/
	## https://github.com/madmaxms/theme-obsidian-2/archive/gray.tar.gz

	## wget --user-agent="User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:32.0) Gecko/20100101 Firefox/32.0"

	wget -q -c 'https://github.com/madmaxms/theme-obsidian-2/archive/gray.tar.gz' -O 'asset/theme-obsidian-2-gray.tar.gz'
	echo "wget -q -c 'https://github.com/madmaxms/theme-obsidian-2/archive/gray.tar.gz' -O 'asset/theme-obsidian-2-gray.tar.gz'"


	#/usr/lib/x86_64-linux-gnu/xfce4/settings/appearance-install-theme 'asset/theme-obsidian-2-gray.tar.gz'
	$(dpkg -L xfce4-settings | grep appearance-install-theme) 'asset/theme-obsidian-2-gray.tar.gz'
	echo "$(dpkg -L xfce4-settings | grep appearance-install-theme) 'asset/theme-obsidian-2-gray.tar.gz'"

	echo

	file "$HOME/.themes/Obsidian-2-Gray"
	ls -l "$HOME/.themes/Obsidian-2-Gray"

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

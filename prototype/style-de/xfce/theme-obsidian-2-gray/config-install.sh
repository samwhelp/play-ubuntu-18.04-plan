#!/usr/bin/env bash

set -e


################################################################################
### Head: theme
##
theme_config_install () {

	theme_config_install_wm_theme
	theme_config_install_ui_theme
	theme_config_install_icon_theme

}

theme_config_install_wm_theme () {

	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
	## <property name="theme" type="string" value="Obsidian-2-Gray"/>

	xfconf-query -c 'xfwm4' -p '/general/theme' -s 'Obsidian-2-Gray'
	echo "xfconf-query -c 'xfwm4' -p '/general/theme' -s 'Obsidian-2-Gray'"

}

theme_config_install_ui_theme () {

	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	## <property name="ThemeName" type="string" value="Obsidian-2-Gray"/>

	xfconf-query -c 'xsettings' -p '/Net/ThemeName' -s 'Obsidian-2-Gray'
	echo "xfconf-query -c 'xsettings' -p '/Net/ThemeName' -s 'Obsidian-2-Gray'"

}

theme_config_install_icon_theme () {

	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	## <property name="IconThemeName" type="string" value="Black-Frost-Suru"/>

	xfconf-query -c 'xsettings' -p '/Net/IconThemeName' -s 'Black-Frost-Suru'
	echo "xfconf-query -c 'xsettings' -p '/Net/IconThemeName' -s 'Black-Frost-Suru'"

}

##
### Tail: theme
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	theme_config_install


}
## start
main_config_install

##
### Tail: main
################################################################################

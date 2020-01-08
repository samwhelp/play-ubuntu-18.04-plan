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
	## <property name="theme" type="string" value="Chandelier"/>

	xfconf-query -c 'xfwm4' -p '/general/theme' -s 'Chandelier'
	echo "xfconf-query -c 'xfwm4' -p '/general/theme' -s 'Chandelier'"

}

theme_config_install_ui_theme () {

	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	## <property name="ThemeName" type="string" value="Honda-Super-Cub"/>

	xfconf-query -c 'xsettings' -p '/Net/ThemeName' -s 'Honda-Super-Cub'
	echo "xfconf-query -c 'xsettings' -p '/Net/ThemeName' -s 'Honda-Super-Cub'"

}

theme_config_install_icon_theme () {

	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	## <property name="IconThemeName" type="string" value="Numix"/>

	xfconf-query -c 'xsettings' -p '/Net/IconThemeName' -s 'Numix'
	echo "xfconf-query -c 'xsettings' -p '/Net/IconThemeName' -s 'Numix'"

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

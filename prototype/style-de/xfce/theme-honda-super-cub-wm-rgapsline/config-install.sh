#!/usr/bin/env bash

set -e


################################################################################
### Head: theme
##
theme_config_install () {

	theme_config_install_wm_theme
	theme_config_install_ui_theme
	theme_config_install_icon_theme
	theme_config_install_cursor_theme

}

theme_config_install_wm_theme () {

	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
	## <property name="theme" type="string" value="RGapsLine"/>

	xfconf-query -c 'xfwm4' -p '/general/theme' -s 'RGapsLine'
	echo "xfconf-query -c 'xfwm4' -p '/general/theme' -s 'RGapsLine'"

}

theme_config_install_ui_theme () {

	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	## <property name="ThemeName" type="string" value="Honda-Super-Cub"/>

	xfconf-query -c 'xsettings' -p '/Net/ThemeName' -s 'Honda-Super-Cub'
	echo "xfconf-query -c 'xsettings' -p '/Net/ThemeName' -s 'Honda-Super-Cub'"

}

theme_config_install_icon_theme () {

	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	## <property name="IconThemeName" type="string" value="Papirus-Dark"/>

	xfconf-query -c 'xsettings' -p '/Net/IconThemeName' -s 'Papirus-Dark'
	echo "xfconf-query -c 'xsettings' -p '/Net/IconThemeName' -s 'Papirus-Dark'"

}

theme_config_install_cursor_theme () {

	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml

	## <property name="CursorThemeName" type="string" value="Breeze_Snow"/>
	## <property name="CursorThemeSize" type="int" value="24"/>

	echo "xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeName' -s 'Breeze_Snow'"
	xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeName' -s "Breeze_Snow"

	echo "xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeSize' -s '24'"
	xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeSize' -s "24"

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

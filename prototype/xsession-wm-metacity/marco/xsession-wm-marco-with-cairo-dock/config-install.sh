#!/usr/bin/env bash

set -e


################################################################################
### Head: xsession
##
xsession_config_install () {

	echo "Install Xsession:"

	## install
	sudo install -m 644 "./config/xsession/marco-session.desktop" "/usr/share/xsessions/marco-session.desktop"
	sudo install -m 755 "./config/xsession/marco-session.sh" "/usr/bin/marco-session.sh"

	## check
	ls -l "/usr/share/xsessions/marco-session.desktop"
	ls -l "/usr/bin/marco-session.sh"

}
##
### Tail: xsession
################################################################################


################################################################################
### Head: marco
##
marco_config_install () {

	marco_put_toggledesktop_desktop_entry
	marco_put_quit_desktop_entry

	## gsettings list-recursively | grep 'Marco' | sort -u

	marco_set_theme

	marco_set_keybindings_show_desktop

	marco_set_keybindings_switch_windows

	marco_set_keybindings_win_close

	marco_set_keybindings_toggle_fullscreen

	marco_set_keybindings_toggle_maximized

	marco_set_keybindings_minimize

	marco_set_keybindings_begin_move

	marco_set_keybindings_begin_resize

	marco_set_keybindings_toggle_above

	marco_set_keybindings_toggle_shaded

	marco_set_keybindings_raise_or_lower

	marco_set_keybindings_toggle_tiled

	marco_set_keybindings_about_workspace

}

marco_put_toggledesktop_desktop_entry () {

	mkdir -p "$HOME/.local/share/applications"
	echo "mkdir -p $HOME/.local/share/applications"

	cp "./config/marco/util/marco-toggle-show-desktop.desktop" "$HOME/.local/share/applications/marco-toggle-show-desktop.desktop"
	echo "cp ./config/marco/util/marco-toggle-show-desktop.desktop $HOME/.local/share/applications/marco-toggle-show-desktop.desktop"

}

marco_put_quit_desktop_entry () {

	#mkdir -p "$HOME/.local/share/applications"
	#echo "mkdir -p $HOME/.local/share/applications"

	cp "./config/marco/util/marco-quit.desktop" "$HOME/.local/share/applications/marco-quit.desktop"
	echo "cp ./config/marco/util/marco-quit.desktop $HOME/.local/share/applications/marco-quit.desktop"

}

marco_set_theme () {


	## Theme
	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'
	## $ gsettings list-recursively | grep 'theme' | grep 'org.mate.Marco'

	#gsettings set org.mate.Marco.general theme 'Arc-Dark'
	#gsettings set org.mate.Marco.general theme 'Ambiance'
	gsettings set org.mate.Marco.general theme 'NumixBlue'
	gsettings set org.gnome.desktop.interface gtk-theme 'NumixBlue'
	gsettings set org.gnome.desktop.interface icon-theme 'Numix'
	gsettings set org.gnome.desktop.interface cursor-theme 'breeze_cursors'


	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'
	## $ gsettings list-recursively | grep 'org.gnome.desktop' | grep 'theme'
	# org.gnome.desktop.wm.preferences theme 'NumixBlue'
	# org.gnome.desktop.interface cursor-theme 'breeze_cursors'
	# org.gnome.desktop.interface icon-theme 'Numix'
	# org.gnome.desktop.interface gtk-theme 'NumixBlue'
	# org.gnome.desktop.interface gtk-key-theme 'Default'
	# org.gnome.desktop.sound theme-name 'ubuntu'
	##

}


marco_set_keybindings_show_desktop () {
	##gsettings list-recursively | grep 'org.mate.Marco' | grep 'show-desktop'
	#gsettings set org.mate.Marco.global-keybindings show-desktop '<Control><Alt>d'
	gsettings set org.mate.Marco.global-keybindings show-desktop '<Super>d'

}

marco_set_keybindings_switch_windows () {

	## gsettings list-recursively | grep 'org.mate.Marco' | grep 'windows' | sort -u


	#gsettings set org.mate.Marco.global-keybindings switch-windows-backward 'disabled'
	#gsettings set org.mate.Marco.global-keybindings switch-windows '<Alt>Tab'


	gsettings set org.mate.Marco.global-keybindings switch-windows-backward '<Super>a'
	gsettings set org.mate.Marco.global-keybindings switch-windows '<Super>s'

}

marco_set_keybindings_win_close () {

	## gsettings list-recursively | grep 'org.mate.Marco' | grep 'close' | sort -u


	#gsettings set org.mate.Marco.window-keybindings close '<Alt>F4'
	#gsettings set org.mate.Marco.window-keybindings close '<Shift><Alt>q'

	gsettings set org.mate.Marco.window-keybindings close '<Super>q'


}

marco_set_keybindings_toggle_fullscreen () {

	##gsettings list-recursively | grep 'org.mate.Marco' | grep 'toggle-fullscreen' | sort -u


	#gsettings set org.mate.Marco.window-keybindings toggle-fullscreen 'disabled'
	#gsettings set org.mate.Marco.window-keybindings toggle-fullscreen 'F11'
	#gsettings set org.mate.Marco.window-keybindings toggle-fullscreen '<Super>o'
	gsettings set org.mate.Marco.window-keybindings toggle-fullscreen '<Super>f'

}

marco_set_keybindings_toggle_maximized () {

	##gsettings list-recursively | grep 'org.mate.Marco' | grep 'toggle-maximized' | sort -u


	#gsettings set org.mate.Marco.window-keybindings toggle-maximized '<Alt>F10'
	#gsettings set org.mate.Marco.window-keybindings toggle-maximized '<Super>u'
	gsettings set org.mate.Marco.window-keybindings toggle-maximized '<Super>w'

}

marco_set_keybindings_minimize () {

	##gsettings list-recursively | grep 'org.mate.Marco' | grep 'minimize' | sort -u


	#gsettings set org.mate.Marco.window-keybindings minimize '<Alt>F9'
	#gsettings set org.mate.Marco.window-keybindings minimize '<Super>i'
	gsettings set org.mate.Marco.window-keybindings minimize '<Super>x'

}

marco_set_keybindings_begin_move () {

	##gsettings list-recursively | grep 'org.mate.Marco' | grep 'begin-move' | sort -u


	#gsettings set org.mate.Marco.window-keybindings begin-move '<Alt>F7'
	gsettings set org.mate.Marco.window-keybindings begin-move '<Super>e'

}

marco_set_keybindings_begin_resize () {

	##gsettings list-recursively | grep 'org.mate.Marco' | grep 'begin-resize' | sort -u


	#gsettings set org.mate.Marco.window-keybindings begin-resize '<Alt>F8'
	gsettings set org.mate.Marco.window-keybindings begin-resize '<Super>r'


}

marco_set_keybindings_toggle_above () {

	##gsettings list-recursively | grep 'org.mate.Marco' | grep 'toggle-above' | sort -u

	gsettings set org.mate.Marco.window-keybindings toggle-above '<Super>t'

}

marco_set_keybindings_toggle_shaded () {

	##gsettings list-recursively | grep 'org.mate.Marco' | grep 'toggle-shaded' | sort -u

	gsettings set org.mate.Marco.window-keybindings toggle-shaded '<Super>c'

}

marco_set_keybindings_raise_or_lower () {

	##gsettings list-recursively | grep 'org.mate.Marco' | grep 'raise-or-lower' | sort -u

	gsettings set org.mate.Marco.window-keybindings raise-or-lower '<Super>z'

}

marco_set_keybindings_toggle_tiled () {

	##gsettings list-recursively | grep 'org.mate.Marco' | grep 'tile' | sort -u


	gsettings set org.mate.Marco.window-keybindings tile-to-corner-nw '<Control><Super>k'
	gsettings set org.mate.Marco.window-keybindings tile-to-corner-ne '<Control><Super>j'
	gsettings set org.mate.Marco.window-keybindings tile-to-corner-sw '<Control><Super>h'
	gsettings set org.mate.Marco.window-keybindings tile-to-corner-se '<Control><Super>l'

	#gsettings set org.mate.Marco.window-keybindings tile-to-side-w '<Super>h'
	#gsettings set org.mate.Marco.window-keybindings tile-to-side-e '<Super>l'
	gsettings set org.mate.Marco.window-keybindings tile-to-side-w '<Super>k'
	gsettings set org.mate.Marco.window-keybindings tile-to-side-e '<Super>j'




}

marco_set_keybindings_about_workspace () {

	##gsettings list-recursively | grep 'org.mate.Marco' | grep 'workspace' | sort -u

	## Workspace
	#gsettings set org.gnome.mutter dynamic-workspaces false
	gsettings set org.mate.Marco.general num-workspaces 4


	#gsettings set org.mate.Marco.global-keybindings switch-to-workspace-down '<Control><Alt>Down'
	#gsettings set org.mate.Marco.global-keybindings switch-to-workspace-left '<Control><Alt>Left'
	#gsettings set org.mate.Marco.global-keybindings switch-to-workspace-prev 'disabled'
	#gsettings set org.mate.Marco.global-keybindings switch-to-workspace-right '<Control><Alt>Right'
	#gsettings set org.mate.Marco.global-keybindings switch-to-workspace-up '<Control><Alt>Up'


	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-left '<Alt>a'
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-right '<Alt>s'
	#gsettings set org.mate.Marco.global-keybindings switch-to-workspace-prev '<Alt>q'
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-prev '<Alt>z'



	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-1 "'<Alt>1'"
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-2 "'<Alt>2'"
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-3 "'<Alt>3'"
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-4 "'<Alt>4'"
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-5 "'<Alt>5'"
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-6 "'<Alt>6'"
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-7 "'<Alt>7'"
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-8 "'<Alt>8'"
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-9 "'<Alt>9'"
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-10 "'<Alt>0'"


	gsettings set org.mate.Marco.window-keybindings move-to-workspace-1 "'<Shift><Alt>exclam'"
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-2 "'<Shift><Alt>at'"
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-3 "'<Shift><Alt>numbersign'"
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-4 "'<Shift><Alt>dollar'"
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-5 "'<Shift><Alt>percent'"
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-6 "'<Shift><Alt>asciicircum'"
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-7 "'<Shift><Alt>ampersand'"
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-8 "'<Shift><Alt>asterisk'"
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-9 "'<Shift><Alt>parenleft'"
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-10 "'<Shift><Alt>parenright'"

}
##
### Tail: marco
################################################################################


################################################################################
### Head: cairo-dock
##
cairo_dock_config_install () {

	echo 'Todo: cairo_dock_config_install'

	return

	mkdir -p "$HOME/.config/cairo-dock"
	echo "mkdir -p $HOME/.config/cairo-dock"


}
##
### Tail: cairo-dock
################################################################################


###############################################################################
### Head: compton
##
compton_config_install () {

	## $ dpkg -L compton | grep conf
	## /usr/share/doc/compton/examples/compton.sample.conf
	## cp $(dpkg -L compton | grep conf) ~/.config/compton.conf


	mkdir -p "$HOME/.config/marco-session/compton"
	echo "mkdir -p $HOME/.config/marco-session/compton"

	#cp "/usr/share/doc/compton/examples/compton.sample.conf" "$HOME/.config/marco-session/compton/compton.conf"
	#echo "cp /usr/share/doc/compton/examples/compton.sample.conf $HOME/.config/marco-session/compton/compton.conf"

	cp "./config/compton/compton.conf" "$HOME/.config/marco-session/compton/compton.conf"
	echo "cp ./config/compton/compton.conf $HOME/.config/marco-session/compton/compton.conf"


}
##
### Tail: compton
################################################################################


################################################################################
### Head: volumeicon
##
volumeicon_config_install () {

	mkdir -p "$HOME/.config/volumeicon"
	echo "mkdir -p $HOME/.config/volumeicon"

	cp "./config/volumeicon/volumeicon" "$HOME/.config/volumeicon/volumeicon"
	echo "cp ./config/volumeicon/volumeicon $HOME/.config/volumeicon/volumeicon"

}
##
### Tail: volumeicon
################################################################################


################################################################################
### Head: lxqt-globalkeys
##
lxqt_globalkeys_config_install () {

	mkdir -p "$HOME/.config/marco-session/lxqt"
	echo "mkdir -p $HOME/.config/marco-session/lxqt"

	cp "./config/lxqt/globalkeyshortcuts.conf" "$HOME/.config/marco-session/lxqt/globalkeyshortcuts.conf"
	echo "cp ./config/lxqt/globalkeyshortcuts.conf $HOME/.config/marco-session/lxqt/globalkeyshortcuts.conf"

}
##
### Tail: lxqt-globalkeys
################################################################################


################################################################################
### Head: pcmanfm-qt
##
pcmanfm_qt_config_install () {

	mkdir -p "$HOME/.config/pcmanfm-qt/default"
	echo "mkdir -p $HOME/.config/pcmanfm-qt/default"

	cp ./config/pcmanfm-qt/default/settings.conf "$HOME/.config/pcmanfm-qt/default/settings.conf"
	echo "cp ./config/pcmanfm-qt/default/settings.conf $HOME/.config/pcmanfm-qt/default/settings.conf"

}
##
### Tail: pcmanfm-qt
################################################################################


################################################################################
### Head: rofi
##
rofi_config_install () {
	mkdir -p "$HOME/.config/rofi"
	echo "mkdir -p $HOME/.config/rofi"

	cp "./config/rofi/config" "$HOME/.config/rofi/config"
	echo "cp ./config/rofi/config $HOME/.config/rofi/config"

	rofi_put_app_desktop_entry
}

rofi_put_app_desktop_entry () {
	mkdir -p "$HOME/.local/share/applications"
	echo "mkdir -p $HOME/.local/share/applications"

	cp "./config/rofi/rofi-show-drun.desktop" "$HOME/.local/share/applications/rofi-show-drun.desktop"
	echo "cp ./config/rofi/rofi-show-drun.desktop $HOME/.local/share/applications/rofi-show-drun.desktop"

	cp "./config/rofi/rofi-show-run.desktop" "$HOME/.local/share/applications/rofi-show-run.desktop"
	echo "cp ./config/rofi/rofi-show-run.desktop $HOME/.local/share/applications/rofi-show-run.desktop"

	cp "./config/rofi/rofi-show-window.desktop" "$HOME/.local/share/applications/rofi-show-window.desktop"
	echo "cp ./config/rofi/rofi-show-window.desktop $HOME/.local/share/applications/rofi-show-window.desktop"

}
##
### Tail: rofi
################################################################################


################################################################################
### Head: sakura
##
sakura_config_install () {
	mkdir -p "$HOME/.config/sakura"
	echo "mkdir -p $HOME/.config/sakura"

	cp "./config/sakura/sakura.conf" "$HOME/.config/sakura/sakura.conf"
	echo "cp ./config/sakura/sakura.conf $HOME/.config/sakura/sakura.conf"


	sakura_put_my_desktop_entry
}

sakura_put_my_desktop_entry () {
	mkdir -p "$HOME/.local/share/applications"
	echo "mkdir -p $HOME/.local/share/applications"

	cp "/usr/share/applications/sakura.desktop" "$HOME/.local/share/applications/sakura.desktop"
	echo "cp /usr/share/applications/sakura.desktop $HOME/.local/share/applications/sakura.desktop"

	sed -i 's/^Exec=sakura/Exec=sakura -m/g' "$HOME/.local/share/applications/sakura.desktop"
	echo "sed -i 's/^Exec=sakura/Exec=sakura -m/g' $HOME/.local/share/applications/sakura.desktop"
}
##
### Tail: sakura
################################################################################


################################################################################
### Head: fcitx
##
fcitx_config_install () {
	mkdir -p $HOME/.config/fcitx
	echo "mkdir -p $HOME/.config/fcitx"

	cp ./config/fcitx/profile $HOME/.config/fcitx/profile
	echo "cp ./config/fcitx/profile $HOME/.config/fcitx/profile"

	fcitx_config_install_im_config

}

fcitx_config_install_im_config () {
	echo
	im-config -n fcitx
	echo "im-config -n fcitx"
	echo "cat ~/.xinputrc"
	cat ~/.xinputrc
	echo
}
##
### Tail: fcitx
################################################################################


################################################################################
### Head: gtk3
##
gtk3_config_install () {
	mkdir -p $HOME/.config/gtk-3.0
	echo "mkdir -p $HOME/.config/gtk-3.0"

	cp ./config/gtk3/settings.ini $HOME/.config/gtk-3.0/settings.ini
	echo "cp ./config/gtk3/settings.ini $HOME/.config/gtk-3.0/settings.ini"
}
##
### Tail: gtk3
################################################################################


################################################################################
### Head: gtk2
##
gtk2_config_install () {

	cp ./config/gtk2/.gtkrc-2.0 $HOME/.gtkrc-2.0
	echo "cp ./config/gtk2/.gtkrc-2.0 $HOME/.gtkrc-2.0"

}
##
### Tail: gtk2
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	xsession_config_install

	cairo_dock_config_install

	compton_config_install

	volumeicon_config_install

	lxqt_globalkeys_config_install

	pcmanfm_qt_config_install

	rofi_config_install

	sakura_config_install

	fcitx_config_install

	gtk3_config_install

	gtk2_config_install

	marco_config_install

}
## start
main_config_install

##
### Tail: main
################################################################################

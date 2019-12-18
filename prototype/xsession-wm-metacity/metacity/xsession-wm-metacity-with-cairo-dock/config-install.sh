#!/usr/bin/env bash

set -e


################################################################################
### Head: xsession
##
xsession_config_install () {

	echo "Install Xsession:"

	## install
	sudo install -m 644 "./config/xsession/metacity-session.desktop" "/usr/share/xsessions/metacity-session.desktop"
	sudo install -m 755 "./config/xsession/metacity-session.sh" "/usr/bin/metacity-session.sh"

	## check
	ls -l "/usr/share/xsessions/metacity-session.desktop"
	ls -l "/usr/bin/metacity-session.sh"

}
##
### Tail: xsession
################################################################################


################################################################################
### Head: metacity
##
metacity_config_install () {

	metacity_put_toggledesktop_desktop_entry
	metacity_put_quit_desktop_entry

	metacity_set_theme

	metacity_set_keybindings_show_desktop

	metacity_set_keybindings_switch_windows

	metacity_set_keybindings_win_close

	metacity_set_keybindings_toggle_fullscreen

	metacity_set_keybindings_toggle_maximized

	metacity_set_keybindings_minimize

	metacity_set_keybindings_begin_move

	metacity_set_keybindings_begin_resize

	metacity_set_keybindings_toggle_above

	metacity_set_keybindings_toggle_shaded

	metacity_set_keybindings_raise_or_lower

	metacity_set_keybindings_toggle_tiled

	metacity_set_edge_tiling

	metacity_set_keybindings_about_workspace

}

metacity_put_toggledesktop_desktop_entry () {

	mkdir -p "$HOME/.local/share/applications"
	echo "mkdir -p $HOME/.local/share/applications"

	cp "./config/metacity/util/metacity-toggle-show-desktop.desktop" "$HOME/.local/share/applications/metacity-toggle-show-desktop.desktop"
	echo "cp ./config/metacity/util/metacity-toggle-show-desktop.desktop $HOME/.local/share/applications/metacity-toggle-show-desktop.desktop"

}

metacity_put_quit_desktop_entry () {

	#mkdir -p "$HOME/.local/share/applications"
	#echo "mkdir -p $HOME/.local/share/applications"

	cp "./config/metacity/util/metacity-quit.desktop" "$HOME/.local/share/applications/metacity-quit.desktop"
	echo "cp ./config/metacity/util/metacity-quit.desktop $HOME/.local/share/applications/metacity-quit.desktop"

}


metacity_set_theme () {

	## Theme Type
	## $ gsettings list-recursively | grep 'org.gnome.metacity.theme'
	# org.gnome.metacity.theme name ''
	# org.gnome.metacity.theme type 'gtk'
	##
	gsettings set org.gnome.metacity.theme type 'gtk'

	## Theme
	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'
	gsettings set org.gnome.desktop.wm.preferences theme 'NumixBlue'
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


metacity_set_keybindings_show_desktop () {

	gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Control><Alt>d', '<Control><Super>d', '<Super>d']"

}

metacity_set_keybindings_switch_windows () {

	gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Super>a']"
	gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Super>s']"

}

metacity_set_keybindings_win_close () {

	gsettings set org.gnome.desktop.wm.keybindings close "['<Alt>F4', '<Shift><Alt>q', '<Super>q']"

}

metacity_set_keybindings_toggle_fullscreen () {

	## Fullscreen
	gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['F11', '<Super>o', '<Super>f']"

}

metacity_set_keybindings_toggle_maximized () {

	gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Alt>F10', '<Super>u', '<Super>w']"

}

metacity_set_keybindings_minimize () {

	#gsettings set org.gnome.desktop.wm.keybindings minimize "['<Super>h']"
	gsettings set org.gnome.desktop.wm.keybindings minimize "['<Super>i', '<Super>x']"

}

metacity_set_keybindings_begin_move () {
	gsettings set org.gnome.desktop.wm.keybindings begin-move "['<Alt>F7', '<Super>e']"
}

metacity_set_keybindings_begin_resize () {
	gsettings set org.gnome.desktop.wm.keybindings begin-resize "['<Alt>F8', '<Super>r']"
}

metacity_set_keybindings_toggle_above () {
	#gsettings set org.gnome.desktop.wm.keybindings always-on-top "['<Super>t']"
	gsettings set org.gnome.desktop.wm.keybindings toggle-above "['<Super>t']"
}

metacity_set_keybindings_toggle_shaded () {
	gsettings set org.gnome.desktop.wm.keybindings toggle-shaded "['<Super>c']"
}

metacity_set_keybindings_raise_or_lower () {
	gsettings set org.gnome.desktop.wm.keybindings raise-or-lower "['<Super>z']"
}

metacity_set_keybindings_toggle_tiled () {

	#gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "'<Super>l'"
	gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "'<Super>m'"

	gsettings set org.gnome.metacity.keybindings toggle-tiled-left "['<Super>Left', '<Super>h']"
	gsettings set org.gnome.metacity.keybindings toggle-tiled-right "['<Super>Right', '<Super>l']"

}

metacity_set_edge_tiling () {

	gsettings set org.gnome.metacity edge-tiling true

}

metacity_set_keybindings_about_workspace () {

	## Workspace
	#gsettings set org.gnome.mutter dynamic-workspaces false
	#gsettings set org.gnome.desktop.wm.preferences num-workspaces 4
	gsettings set org.gnome.desktop.wm.preferences num-workspaces 10


	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left  "['<Control><Alt>Left', '<Alt>a']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right  "['<Control><Alt>Right', '<Alt>s']"


	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Alt>1']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Alt>2']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Alt>3']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Alt>4']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "['<Alt>5']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "['<Alt>6']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7 "['<Alt>7']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8 "['<Alt>8']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9 "['<Alt>9']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-10 "['<Alt>0']"

	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Shift><Alt>exclam']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Shift><Alt>at']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Shift><Alt>numbersign']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Shift><Alt>dollar']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5 "['<Shift><Alt>percent']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-6 "['<Shift><Alt>asciicircum']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-7 "['<Shift><Alt>ampersand']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-8 "['<Shift><Alt>asterisk']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-9 "['<Shift><Alt>parenleft']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-10 "['<Shift><Alt>parenright']"

}



##
### Tail: metacity
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


################################################################################
### Head: compton
##
compton_config_install () {

	## $ dpkg -L compton | grep conf
	## /usr/share/doc/compton/examples/compton.sample.conf
	## cp $(dpkg -L compton | grep conf) ~/.config/compton.conf


	mkdir -p "$HOME/.config/metacity-session/compton"
	echo "mkdir -p $HOME/.config/metacity-session/compton"

	#cp "/usr/share/doc/compton/examples/compton.sample.conf" "$HOME/.config/metacity-session/compton/compton.conf"
	#echo "cp /usr/share/doc/compton/examples/compton.sample.conf $HOME/.config/metacity-session/compton/compton.conf"

	cp "./config/compton/compton.conf" "$HOME/.config/metacity-session/compton/compton.conf"
	echo "cp ./config/compton/compton.conf $HOME/.config/metacity-session/compton/compton.conf"


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

	mkdir -p "$HOME/.config/metacity-session/lxqt"
	echo "mkdir -p $HOME/.config/metacity-session/lxqt"

	cp "./config/lxqt/globalkeyshortcuts.conf" "$HOME/.config/metacity-session/lxqt/globalkeyshortcuts.conf"
	echo "cp ./config/lxqt/globalkeyshortcuts.conf $HOME/.config/metacity-session/lxqt/globalkeyshortcuts.conf"

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

	metacity_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################

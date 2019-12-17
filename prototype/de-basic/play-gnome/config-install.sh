#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome
##
gnome_config_install () {

	gnome_set_wallpaper

	gnome_set_theme

	gnome_set_keybindings_show_desktop

	gnome_set_keybindings_toggle_fullscreen

	gnome_set_keybindings_about_workspace

	gnome_set_keybindings_start_here

	gnome_set_keybindings_custom


}

gnome_set_wallpaper () {

	## Wallpaper
	gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/Manhattan_Sunset_by_Giacomo_Ferroni.jpg'
	gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/Raindrops_On_The_Table_by_Alex_Fazit.jpg'

}

gnome_set_theme () {

	## Theme Type
	## $ gsettings list-recursively | grep 'org.gnome.metacity.theme'
	# org.gnome.metacity.theme name ''
	# org.gnome.metacity.theme type 'gtk'
	##
	#gsettings set org.gnome.metacity.theme type 'gtk'

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

gnome_set_keybindings_show_desktop () {

	gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Control><Alt>d', '<Super>d']"

}

gnome_set_keybindings_toggle_fullscreen () {

	## Fullscreen
	gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['F11', '<Super>f', '<Super>o']"

}

gnome_set_keybindings_about_workspace () {

	## Workspace
	gsettings set org.gnome.mutter dynamic-workspaces false
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

gnome_set_keybindings_start_here () {

	## Toggle the activities overview
	#gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "['<Alt>F1', '<Shift><Alt>d']"

	## Show all applications
	gsettings set org.gnome.shell.keybindings toggle-application-view "['<Super>a', '<Shift><Alt>a']"

	## Show the activities overview
	## gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>s', '<Shift><Alt>r']"


}

gnome_set_keybindings_custom () {

	## Custom Keybindings
	gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/tilix/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-lefthand/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-drun/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/editor/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/browser/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files-1/']"

	## Tilix
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/tilix/name "'Tilix'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/tilix/command "'tilix --quake'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/tilix/binding "'<Shift><Alt>t'"

	## Terminal
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/name "'Terminal'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/command "'sakura -m'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/binding "'<Alt>Return'"

	## Terminal (Left Hand)
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-lefthand/name "'Terminal-LeftHand'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-lefthand/command "'sakura -m'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-lefthand/binding "'<Shift><Alt>a'"


	## Rofi Show Run
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/name "'Rofi-Show-Run'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/command "'rofi -show run'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/binding "'<Shift><Alt>r'"

	## Rofi Show Window
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/name "'Rofi-Show-Window'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/command "'rofi -show window -show-icons'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/binding "'<Shift><Alt>w'"

	## Rofi Show Drun
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-drun/name "'Rofi-Show-Drun'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-drun/command "'rofi -show drun -show-icons'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-drun/binding "'<Shift><Alt>d'"

	## Editor
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/editor/name "'Editor'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/editor/command "'gedit'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/editor/binding "'<Shift><Alt>e'"

	## Browser
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/browser/name "'Browser'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/browser/command "'firefox'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/browser/binding "'<Shift><Alt>b'"

	## Files
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files/name "'Files'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files/command "'pcmanfm-qt'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files/binding "'<Shift><Alt>f'"

	## Files-1
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files-1/name "'Files-1'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files-1/command "'nautilus'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files-1/binding "'<Shift><Alt>g'"


}
##
### Tail: gnome
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
	mkdir -p $HOME/.config/rofi
	echo "mkdir -p $HOME/.config/rofi"

	cp ./config/rofi/config $HOME/.config/rofi/config
	echo "cp ./config/rofi/config $HOME/.config/rofi/config"
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

	pcmanfm_qt_config_install

	rofi_config_install

	sakura_config_install

	fcitx_config_install

	gtk3_config_install

	gtk2_config_install

	gnome_config_install

}
## start
main_config_install

##
### Tail: main
################################################################################

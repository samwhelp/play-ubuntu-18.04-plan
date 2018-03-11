#!/usr/bin/env bash


## init
THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source "$THE_BASE_DIR_PATH/_init.sh"


## func

### Head: util #################################################################
#
run_conf_set_each () {
	local file_name
	local source_file_path
	local target_file_path
	local source_dir_path="$1"
	shift 1
	local target_dir_path="$1"
	shift 1
	for file_name in $@; do
		source_file_path="$source_dir_path/$file_name"
		target_file_path="$target_dir_path/$file_name"
		##cp "$source_file_path" "$target_file_path"
		echo cp "$source_file_path" "$target_file_path"
	done
}
#
### Tail: util #################################################################


### Head: gnome #################################################################
#
run_gnome_conf_set_each () {
	run_conf_set_each "$THE_GNOME_CONF_SET_DIR_PATH" "$THE_GNOME_CONF_MAIN_DIR_PATH" "$@"
}

#run_gnome_conf_set () {
#	local file_list=""
#	run_gnome_conf_set_each "$file_list"
#}

run_gnome_conf_set () {
	run_gnome_conf_set_all
}

run_gnome_conf_set_all () {

	## Wallpaper
	gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/London_Eye_by_Paul_Daniell.jpg'
	gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/Planking_is_going_against_the_grain_by_mendhak.jpg'


	## Theme
	## gsettings list-recursively | grep theme
	gsettings set org.gnome.desktop.wm.preferences theme 'NumixBlue'
	gsettings set org.gnome.desktop.interface cursor-theme 'breeze_cursors'
	gsettings set org.gnome.desktop.interface icon-theme 'Numix'
	gsettings set org.gnome.desktop.interface gtk-theme 'NumixBlue'



	## Fullscreen
	gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['F11']"


	## Workspace
	gsettings set org.gnome.mutter dynamic-workspaces false
	gsettings set org.gnome.desktop.wm.preferences num-workspaces 10

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




	## Toggle the activities overview
	gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "['<Alt>F1', '<Shift><Alt>d']"

	## Show all applications
	gsettings set org.gnome.shell.keybindings toggle-application-view "['<Super>a', '<Shift><Alt>a']"

	## Show the activities overview
	## gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>s', '<Shift><Alt>r']"




	## Custom Keybindings
	gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/tilix/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/gnome-terminal/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/editor/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/browser/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files-1/']"

	## Tilix
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/tilix/name "'Tilix'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/tilix/command "'tilix --quake'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/tilix/binding "'<Shift><Alt>t'"

	## Gnome Terminal
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/gnome-terminal/name "'Gnome-Terminal'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/gnome-terminal/command "'gnome-terminal --geometry=200x100+0+0'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/gnome-terminal/binding "'<Alt>Return'"

	## Rofi Show Run
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/name "'Rofi-Show-Run'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/command "'rofi -show run'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/binding "'<Shift><Alt>r'"

	## Rofi Show Window
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/name "'Rofi-Show-Run'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/command "'rofi -show window'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/binding "'<Shift><Alt>w'"

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


#
### Tail: gnome #################################################################


### Head: rofi #################################################################
#
run_rofi_conf_set_each () {
	run_conf_set_each "$THE_ROFI_CONF_SET_DIR_PATH" "$THE_ROFI_CONF_MAIN_DIR_PATH" "$@"
}

run_rofi_conf_set () {
	local file_list="config"

	run_rofi_conf_set_each "$file_list"

}
#
### Tail: rofi #################################################################


### Head: fcitx ################################################################
#
run_fcitx_conf_set_each () {
	run_conf_set_each "$THE_FCITX_CONF_SET_DIR_PATH" "$THE_FCITX_CONF_MAIN_DIR_PATH" "$@"
}

run_fcitx_conf_set () {
	local file_list="profile"

	run_fcitx_conf_set_each "$file_list"

}
#
### Tail: fcitx ################################################################


### Head: gtk3 #################################################################
#
run_gtk3_conf_set_each () {
	run_conf_set_each "$THE_GTK3_CONF_SET_DIR_PATH" "$THE_GTK3_CONF_MAIN_DIR_PATH" "$@"
}

run_gtk3_conf_set () {
	local file_list="settings.ini"

	run_gtk3_conf_set_each "$file_list"

}
#
### Tail: gtk3 #################################################################


### Head: gtk2 #################################################################
#
run_gtk2_conf_set_each () {
	run_conf_set_each "$THE_GTK2_CONF_SET_DIR_PATH" "$THE_GTK2_CONF_MAIN_DIR_PATH" "$@"
}

run_gtk2_conf_set () {
	local file_list=".gtkrc-2.0"

	run_gtk2_conf_set_each "$file_list"

}
#
### Tail: gtk2 #################################################################


### Head: main #################################################################
#
main_conf_set () {
	xdg_dir_prepare

	run_gnome_conf_set

	run_rofi_conf_set

	run_fcitx_conf_set

	run_gtk3_conf_set

	run_gtk2_conf_set
}

main_conf_set "$@"
#
### Tail: main #################################################################

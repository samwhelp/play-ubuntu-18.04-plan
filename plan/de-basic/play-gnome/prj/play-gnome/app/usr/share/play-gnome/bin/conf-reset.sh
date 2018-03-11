#!/usr/bin/env bash


## init
THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source "$THE_BASE_DIR_PATH/_init.sh"


## func

### Head: util #################################################################
#

run_conf_reset_each () {
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

		if [ -f "$source_file_path" ]; then
			##cp "$source_file_path" "$target_file_path"
			echo cp "$source_file_path" "$target_file_path"
		fi

	done
}
#
### Tail: util #################################################################


### Head: gnome ################################################################
#
run_gnome_conf_reset_each () {
	run_conf_reset_each "$THE_GNOME_CONF_RESET_DIR_PATH" "$THE_GNOME_CONF_MAIN_DIR_PATH" "$@"
}

#run_gnome_conf_reset () {
#	local file_list=""
#	run_gnome_conf_reset_each "$file_list"
#}

run_gnome_conf_reset () {


}

run_gnome_conf_reset_all () {

	## Wallpaper
	gsettings reset org.gnome.desktop.background picture-uri
	gsettings reset org.gnome.desktop.screensaver picture-uri


	## Theme
	## gsettings list-recursively | grep theme
	gsettings reset org.gnome.desktop.wm.preferences theme
	gsettings reset org.gnome.desktop.interface cursor-theme
	gsettings reset org.gnome.desktop.interface icon-theme
	gsettings reset org.gnome.desktop.interface gtk-theme



	## Fullscreen
	gsettings reset org.gnome.desktop.wm.keybindings toggle-fullscreen


	## Workspace
	gsettings reset org.gnome.mutter dynamic-workspaces
	gsettings reset org.gnome.desktop.wm.preferences num-workspaces

	gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-1
	gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-2
	gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-3
	gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-4
	gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-5
	gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-6
	gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-7
	gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-8
	gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-9
	gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-10

	gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-1
	gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-2
	gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-3
	gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-4
	gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-5
	gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-6
	gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-7
	gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-8
	gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-9
	gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-10




	## Toggle the activities overview
	gsettings reset org.gnome.desktop.wm.keybindings panel-main-menu

	## Show all applications
	gsettings reset org.gnome.shell.keybindings toggle-application-view

	## Show the activities overview
	gsettings reset org.gnome.shell.keybindings toggle-overview




	## Remove Custom Keybindings
	gsettings reset org.gnome.settings-daemon.plugins.media-keys custom-keybindings

	## Tilix
	dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/tilix/

	## Gnome Terminal
	dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/gnome-terminal/

	## Rofi Show Run
	dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/

	## Rofi Show Window
	dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/

	## Editor
	dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/editor/

	## Browser
	dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/browser/

	## Files
	dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files/

	## Files-1
	dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files-1/

}

#
### Tail: gnome ################################################################


### Head: rofi #################################################################
#
run_rofi_conf_reset_each () {
	run_conf_reset_each "$THE_ROFI_CONF_RESET_DIR_PATH" "$THE_ROFI_CONF_MAIN_DIR_PATH" "$@"
}

run_rofi_conf_reset () {
	local file_list="config"

	run_rofi_conf_reset_each "$file_list"

}
#
### Tail: rofi #################################################################


### Head: fcitx ################################################################
#
run_fcitx_conf_reset_each () {
	run_conf_reset_each "$THE_FCITX_CONF_RESET_DIR_PATH" "$THE_FCITX_CONF_MAIN_DIR_PATH" "$@"
}

run_fcitx_conf_reset () {
	local file_list="profile"

	run_fcitx_conf_reset_each "$file_list"

}
#
### Tail: fcitx ################################################################


### Head: gtk3 #################################################################
#
run_gtk3_conf_reset_each () {
	run_conf_reset_each "$THE_GTK3_CONF_RESET_DIR_PATH" "$THE_GTK3_CONF_MAIN_DIR_PATH" "$@"
}

run_gtk3_conf_reset () {
	local file_list="settings.ini"

	run_gtk3_conf_reset_each "$file_list"

}
#
### Tail: gtk3 #################################################################


### Head: gtk2 #################################################################
#
run_gtk2_conf_reset_each () {
	run_conf_reset_each "$THE_GTK2_CONF_RESET_DIR_PATH" "$THE_GTK2_CONF_MAIN_DIR_PATH" "$@"
}

run_gtk2_conf_reset () {
	local file_list=".gtkrc-2.0"

	run_gtk2_conf_reset_each "$file_list"

}
#
### Tail: gtk2 #################################################################


### Head: main #################################################################
#
main_conf_reset () {
	xdg_dir_prepare

	run_gnome_conf_reset

	run_rofi_conf_reset

	run_fcitx_conf_reset

	run_gtk3_conf_reset

	run_gtk2_conf_reset
}

main_conf_reset "$@"
#
### Tail: main #################################################################

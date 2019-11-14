

### Head: main #################################################################
#
gnome_conf_set () {
	echo
	echo "### Head: gnome_conf_set ########################################################"
	echo "#"

	gnome_conf_set_config

	echo "#"
	echo "### Tail: gnome_conf_set ########################################################"
	echo
}
#
### Tail: main #################################################################


### Head: gnome #################################################################
#
gnome_conf_set_config () {

	## Wallpaper
	gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/Manhattan_Sunset_by_Giacomo_Ferroni.jpg'
	gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/Raindrops_On_The_Table_by_Alex_Fazit.jpg'


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
	#gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "['<Alt>F1', '<Shift><Alt>d']"

	## Show all applications
	gsettings set org.gnome.shell.keybindings toggle-application-view "['<Super>a', '<Shift><Alt>a']"

	## Show the activities overview
	## gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>s', '<Shift><Alt>r']"




	## Custom Keybindings
	gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/tilix/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/gnome-terminal/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-drun/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/editor/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/browser/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files-1/']"

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
#
### Tail: gnome #################################################################

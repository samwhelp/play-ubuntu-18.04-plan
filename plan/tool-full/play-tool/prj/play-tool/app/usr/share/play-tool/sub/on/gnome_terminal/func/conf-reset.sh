

### Head: main #################################################################
#
gnome_terminal_conf_reset () {
	echo
	echo "### Head: gnome_terminal_conf_reset ######################################################"
	echo "#"

	gnome_terminal_conf_reset_config

	echo "#"
	echo "### Tail: gnome_terminal_conf_reset ######################################################"
	echo
}
#
### Tail: main #################################################################


### Head: gnome_terminal ################################################################
#
gnome_terminal_conf_reset_config () {

	## https://wiki.gnome.org/Apps/Terminal/FAQ
	## $ dpkg -L gnome-terminal | grep gschema
	## /usr/share/glib-2.0/schemas/org.gnome.Terminal.gschema.xml
	## $ view /usr/share/glib-2.0/schemas/org.gnome.Terminal.gschema.xml

	local profile=$(gsettings get org.gnome.Terminal.ProfilesList default)
	profile=${profile:1:-1} # remove leading and trailing single quotes
	echo "profile=${profile}"

	echo
	echo 'gsettings reset "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" use-theme-colors'
	gsettings reset "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" use-theme-colors

	echo
	echo "gsettings reset \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" foreground-color"
	gsettings reset "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" foreground-color

	echo
	echo "gsettings reset \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" foreground-color"
	gsettings reset "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" background-color


	echo
	echo "gsettings reset \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" use-theme-transparency"
	gsettings reset "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" use-theme-transparency

	echo
	echo "gsettings reset \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" use-transparent-background"
	gsettings reset "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" use-transparent-background

	echo
	echo "gsettings reset \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" background-transparency-percent"
	gsettings reset "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" background-transparency-percent

	echo
	echo "gsettings reset \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" visible-name"
	gsettings reset "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" visible-name

	echo
	echo "gsettings reset \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" use-system-font"
	gsettings reset "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" use-system-font

	echo
	echo "gsettings reset \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" font"
	gsettings reset "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" font

	echo
	echo "gsettings reset \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" scrollback-unlimited"
	gsettings reset "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" scrollback-unlimited

}
#
### Tail: gnome_terminal ################################################################

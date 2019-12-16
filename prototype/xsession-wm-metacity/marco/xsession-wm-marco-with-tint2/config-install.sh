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
##
### Tail: marco
################################################################################


################################################################################
### Head: tint2
##
tint2_config_install () {

	mkdir -p "$HOME/.config/marco-session/tint2"
	echo "mkdir -p $HOME/.config/marco-session/tint2"

	cp "./config/tint2/tint2rc" "$HOME/.config/marco-session/tint2/tint2rc"
	echo "cp ./config/tint2/tint2rc $HOME/.config/marco-session/tint2/tint2rc"

}

tint2_config_install_default () {

	mkdir -p "$HOME/.config/tint2"
	echo "mkdir -p $HOME/.config/tint2"

	cp "./config/tint2/tint2rc" "$HOME/.config/tint2/tint2rc"
	echo "cp ./config/tint2/tint2rc $HOME/.config/tint2/tint2rc"

}
##
### Tail: tint2
################################################################################


################################################################################
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

	marco_config_install

	tint2_config_install

	compton_config_install

	volumeicon_config_install

	lxqt_globalkeys_config_install

	pcmanfm_qt_config_install

	rofi_config_install

	sakura_config_install

	fcitx_config_install

	gtk3_config_install

	gtk2_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################

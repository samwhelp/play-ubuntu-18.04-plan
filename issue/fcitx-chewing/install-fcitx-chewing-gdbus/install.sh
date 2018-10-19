#!/usr/bin/env bash


main_install_fcitx_chewing () {
	echo
	echo "sudo apt-get install fcitx-chewing"
	sudo apt-get install fcitx-chewing


}


main_im_config_fcitx () {
	echo
	echo "im-config -n fcitx"
	im-config -n fcitx

}


main_cat_xinputrc () {
	echo
	echo "cat ~/.xinputrc"
	cat ~/.xinputrc
}


main_config_imlist () {

	#sudo apt-get install libglib2.0-bin # for gdbus

	echo
	echo "config_imlist"
	gdbus call --session --dest org.fcitx.Fcitx --object-path /inputmethod --method org.freedesktop.DBus.Properties.Set org.fcitx.Fcitx.InputMethod IMList '<[("Keyboard - English (US)", "fcitx-keyboard-us", "en", true), ("Chewing", "chewing", "zh_TW", true)]>'
}



__main__ () {

	main_install_fcitx_chewing
	main_im_config_fcitx
	main_cat_xinputrc

	main_config_imlist

}

__main__

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


main_prepare_fcitx_config_dir () {
	echo
	echo "mkdir -p $HOME/.config/fcitx"
	mkdir -p "$HOME/.config/fcitx"
}


main_set_profile () {
	echo
	echo "cp ./config/set/profile $HOME/.config/fcitx/profile"
	cp "./config/set/profile" "$HOME/.config/fcitx/profile"
}

main_config_profile () {
	if is_fcitx_running; then
		echo
		echo 'fcitx is running'
		main_stop_fcitx
		main_set_profile
		main_start_fcitx
	else
		echo
		echo 'fcitx not running'
		main_set_profile
		main_start_fcitx
	fi
}

main_stop_fcitx () {
	echo
	echo "Stop fcitx"

	#qdbus org.fcitx.Fcitx /inputmethod org.fcitx.Fcitx.InputMethod.Exit

	killall -9 fcitx

}

main_start_fcitx () {
	echo
	echo "Start fcitx"
	fcitx -r
}

is_fcitx_running () {
	fcitx-remote &> /dev/null
	if [ "$?" = "0" ]; then
		return 0;
	else
		return 1;
	fi
}

__main__ () {

	main_install_fcitx_chewing
	main_im_config_fcitx
	main_cat_xinputrc
	main_prepare_fcitx_config_dir

	main_config_profile

}

__main__


base_dir_prepare () {
	## mkdir -p ../var/itf
	##echo mkdir -p $THE_ITF_DIR_PATH
	mkdir -p $THE_ITF_DIR_PATH
	mkdir -p $THE_ENV_DIR_PATH

}


xdg_dir_prepare () {

	## $HOME/.config/i3
	echo mkdir -p "$THE_I3_CONF_MAIN_DIR_PATH"
	mkdir -p "$THE_I3_CONF_MAIN_DIR_PATH"

	## $HOME/.config/rofi
	echo mkdir -p "$THE_ROFI_CONF_MAIN_DIR_PATH"
	mkdir -p "$THE_ROFI_CONF_MAIN_DIR_PATH"

	## $HOME/.config/fcitx
	echo mkdir -p "$THE_FCITX_CONF_MAIN_DIR_PATH"
	mkdir -p "$THE_FCITX_CONF_MAIN_DIR_PATH"

	## $HOME/.config/gtk-3.0
	echo mkdir -p "$THE_GTK3_CONF_MAIN_DIR_PATH"
	mkdir -p "$THE_GTK3_CONF_MAIN_DIR_PATH"

}

pkg_list_find () {
	cat "$THE_ITF_DIR_PATH"/*.list.txt
}

pkg_install_list_find () {
	local path
	local item
	local list=$(pkg_install_list_file_find)
	for item in $list; do
		path="$THE_ITF_DIR_PATH/$item.list.txt"
		##echo $path
		if [ -f "$path" ]; then
			cat "$path"
		fi
	done
}

pkg_install_list_file_find () {
	local line
	main_env_get "install-list" | while IFS='' read -r line; do
		## ignore leading #
		if [ "${line:1:1}" == '#' ]; then
			continue;
		fi

		## ignore empty line
		if [[ -z "$line" ]]; then
			continue;
		fi

		echo $line
	done

}

pkg_remove_list_find () {
	local path
	local item
	local list=$(pkg_remove_list_file_find)
	for item in $list; do
		path="$THE_ITF_DIR_PATH/$item.list.txt"
		##echo $path
		if [ -f "$path" ]; then
			cat "$path"
		fi
	done
}

pkg_remove_list_file_find () {
	local line
	main_env_get "remove-list" | while IFS='' read -r line; do
		## ignore leading #
		if [ "${line:1:1}" == '#' ]; then
			continue;
		fi

		## ignore empty line
		if [[ -z "$line" ]]; then
			continue;
		fi

		echo $line
	done

}

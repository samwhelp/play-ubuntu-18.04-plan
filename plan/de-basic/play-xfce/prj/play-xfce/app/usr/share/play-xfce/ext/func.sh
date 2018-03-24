

### Head: util_debug ###########################################################
#
util_debug_echo () {
	if is_debug; then
		echo "$@" 1>&2;
	fi
}
#
### Head: util_debug ###########################################################


### Head: main_func ############################################################
#
func_install () {

	func_pkg_install
	func_conf_set

}

func_remove () {

	func_pkg_remove
	func_conf_reset

}


func_pkg_install () {

	func_app_install
	func_apt_install

}

func_pkg_remove () {

	func_app_remove
	func_apt_remove

}

func_app_install () {

	util_app_install_run_all_sub

}

func_app_remove () {

	util_app_remove_run_all_sub

}

func_apt_install () {

	sudo apt-get install $(util_pkg_install_load_all_sub_package_list)

}

func_apt_remove () {

	sudo apt-get purge $(util_pkg_remove_load_all_sub_package_list)

}

func_conf_set () {

	util_conf_set_run_all_sub

}

func_conf_reset () {

	util_conf_reset_run_all_sub

}


func_help () {
	cat <<EOF

Usage:

$ $THE_MAIN_CMD_NAME [command]

Ex:

$ $THE_MAIN_CMD_NAME
$ $THE_MAIN_CMD_NAME help

$ $THE_MAIN_CMD_NAME install
$ $THE_MAIN_CMD_NAME remove

$ $THE_MAIN_CMD_NAME pkg-install
$ $THE_MAIN_CMD_NAME pkg-remove

$ $THE_MAIN_CMD_NAME conf-set
$ $THE_MAIN_CMD_NAME conf-reset

Manpage:

$ man $THE_MAIN_CMD_NAME

EOF
}


func_help_make () {
	cat <<EOF

Usage:

$ make [command]

Ex:

$ make
$ make help

$ make install
$ make remove

$ make pkg-install
$ make pkg-remove

$ make conf-set
$ make conf-reset

EOF
}

#
### Tail: main_func ############################################################




### Head: util_sub_script ######################################################
#
## Ex: util_find_sub_module_file_path 'xfce' 'conf-set'
## Path: sub/on/xfce/func/conf-set.sh
util_find_sub_module_file_path () {
	local sub_name="$1"
	local module_name="$2"
	local file_path="$THE_SUB_ON_DIR_PATH/$sub_name/func/$module_name.sh"

	echo "$file_path"
}

## Ex: util_load_sub_module 'xfce' 'conf-set'
util_load_sub_module () {
	local file_path=$(util_find_sub_module_file_path "$@")

	if [ ! -f "$file_path" ]; then
		local sub_name="$1"
		local module_name="$2"
		util_debug_echo "[Debug] load_sub_module_not_exist: sub_name=$sub_name; module_name=$module_name; file_path=$file_path"
		return 1
	fi

	source $file_path

	return 0

}

## Ex: util_run_sub_module_function 'xfce' 'conf-set' 'xfce_conf_set'
util_run_sub_module_function () {
	local sub_name="$1"
	local module_name="$2"
	local function_name="$3"

	if ! util_load_sub_module "$sub_name" "$module_name"; then
		return 1
	fi

	## if ! command -v $function_name > /dev/null; then
	if ! type -p $function_name; then
		util_debug_echo "[Debug] sub_module_function_not_exist: sub_name=$sub_name; module_name=$module_name; function_name=$function_name"
		return 1
	fi

	## call function
	$function_name

}
#
### Tail: util_sub_script ######################################################




### Head: util_app_install ########################################################
#
## Ex: util_app_install_run_each_sub 'xfce' 'rofi' 'fcitx' 'gtk3' 'gtk2'
util_app_install_run_each_sub () {
	local sub_name
	local module_name
	local function_name

	for sub_name in "$@"; do
		#echo "$sub_name"
		module_name='app_install'
		function_name="${sub_name}_app_install"

		## util_run_sub_module_function "$sub_name" "$module_name" "$function_name"
		## use [!] for [set -e]
		! util_run_sub_module_function "$sub_name" "$module_name" "$function_name"
	done
}

util_app_install_run_all_sub () {
	local sub_name
	local module_name
	local function_name

	## pwd
	cd $THE_SUB_ON_DIR_PATH

	for sub_name in *; do
		#echo "$sub_name"

		module_name='app_install'
		function_name="${sub_name}_app_install"

		! util_run_sub_module_function "$sub_name" "$module_name" "$function_name"

	done

	## pwd
	cd "$OLDPWD"
	## pwd

	## $ man cd
	##  know
	## $ cd -
	## 	equal
	## $ cd "$OLDPWD" && pwd

}
#
### Tail: util_app_install ########################################################


### Head: util_app_remove ######################################################
#
## Ex: util_app_remove_run_each_sub 'xfce' 'rofi' 'fcitx' 'gtk3' 'gtk2'
util_app_remove_run_each_sub () {
	local sub_name
	local module_name
	local function_name

	for sub_name in "$@"; do
		module_name='app_remove'
		function_name="${sub_name}_app_remove"

		! util_run_sub_module_function "$sub_name" "$module_name" "$function_name"
	done
}

util_app_remove_run_all_sub () {
	local sub_name
	local module_name
	local function_name

	cd $THE_SUB_ON_DIR_PATH

	for sub_name in *; do
		module_name='app_remove'
		function_name="${sub_name}_app_remove"

		! util_run_sub_module_function "$sub_name" "$module_name" "$function_name"
	done

	cd "$OLDPWD"
}
#
### Tail: util_app_remove ######################################################




### Head: util_conf_set ########################################################
#
## Ex: util_conf_set_run_each_sub 'xfce' 'rofi' 'fcitx' 'gtk3' 'gtk2'
util_conf_set_run_each_sub () {
	local sub_name
	local module_name
	local function_name

	for sub_name in "$@"; do
		#echo "$sub_name"
		module_name='conf_set'
		function_name="${sub_name}_conf_set"

		## util_run_sub_module_function "$sub_name" "$module_name" "$function_name"
		## use [!] for [set -e]
		! util_run_sub_module_function "$sub_name" "$module_name" "$function_name"
	done
}

util_conf_set_run_all_sub () {
	local sub_name
	local module_name
	local function_name

	## pwd
	cd $THE_SUB_ON_DIR_PATH

	for sub_name in *; do
		#echo "$sub_name"

		module_name='conf_set'
		function_name="${sub_name}_conf_set"

		! util_run_sub_module_function "$sub_name" "$module_name" "$function_name"

	done

	## pwd
	cd "$OLDPWD"
	## pwd

	## $ man cd
	##  know
	## $ cd -
	## 	equal
	## $ cd "$OLDPWD" && pwd

}
#
### Tail: util_conf_set ########################################################


### Head: util_conf_reset ######################################################
#
## Ex: util_conf_reset_run_each_sub 'xfce' 'rofi' 'fcitx' 'gtk3' 'gtk2'
util_conf_reset_run_each_sub () {
	local sub_name
	local module_name
	local function_name

	for sub_name in "$@"; do
		module_name='conf_reset'
		function_name="${sub_name}_conf_reset"

		! util_run_sub_module_function "$sub_name" "$module_name" "$function_name"
	done
}

util_conf_reset_run_all_sub () {
	local sub_name
	local module_name
	local function_name

	cd $THE_SUB_ON_DIR_PATH

	for sub_name in *; do
		module_name='conf_reset'
		function_name="${sub_name}_conf_reset"

		! util_run_sub_module_function "$sub_name" "$module_name" "$function_name"
	done

	cd "$OLDPWD"
}
#
### Tail: util_conf_reset ######################################################




### Head: util_sub_package #####################################################
#
# Ex: util_load_package_list_file 'sub/xfce/pkg/install/main.txt'
util_load_package_list_file () {
	local file_path="$1"

	## could comment
	cat "$file_path" | while IFS='' read -r line; do
		trim_line=$(echo $line) # trim

		## ignore leading #
		if [ "${trim_line:0:1}" == '#' ]; then
			continue;
		fi

		## ignore empty line
		if [[ -z "$trim_line" ]]; then
			continue;
		fi

		echo "$line"
	done
}



## Ex: util_find_sub_package_dir_path 'xfce' 'install'
## Path: sub/xfce/pkg/install
util_find_sub_package_list_dir_path () {
	local sub_name="$1"
	local type_name="$2"
	local dir_path="$THE_SUB_ON_DIR_PATH/$sub_name/pkg/$type_name"

	echo $dir_path

}

## Ex: util_find_sub_package_list_file_path 'xfce' 'install' 'main'
## Path: sub/xfce/pkg/install/main.txt
util_find_sub_package_list_file_path () {
	local sub_name="$1"
	local type_name="$2"
	local list_name="$3"
	local file_path="$THE_SUB_ON_DIR_PATH/$sub_name/pkg/$type_name/$list_name.txt"

	echo "$file_path"

}

## Ex: util_load_sub_package_list 'xfce' 'install' 'main'
util_load_sub_package_list () {
	## local sub_name="$1"
	## local type_name="$2"
	## local list_name="$3"
	local file_path=$(util_find_sub_package_list_file_path "$@")

	if [ ! -f "$file_path" ]; then
		util_debug_echo "[Debug] sub_package_list_file_not_exist: $file_path"
		return 1
	fi

	## simple load
	## cat "$file_path"

	## could comment
	util_load_package_list_file "$file_path"
}

## Ex: util_load_type_sub_package_list 'xfce' 'install'
util_load_type_sub_package_list () {
	## local sub_name="$1"
	## local type_name="$2"

	local dir_path=$(util_find_sub_package_list_dir_path "$@")

	if [ ! -d "$dir_path" ]; then
		util_debug_echo "[Debug] sub_package_list_dir_not_exist: $dir_path"
		return 1
	fi

	local file_path

	for file_path in $dir_path/*; do
		##echo "$file_path"

		util_load_package_list_file "$file_path"
	done

}

#
### Tail: util_sub_package #####################################################


### Head: util_pkg_install #####################################################
#
## Ex: util_pkg_install_load_all_sub_package_list
util_pkg_install_load_all_sub_package_list () {
	local sub_name
	local type_name="install"

	cd $THE_SUB_ON_DIR_PATH

	for sub_name in *; do
		util_load_type_sub_package_list "$sub_name" "$type_name"
	done

	cd "$OLDPWD"
}

## Ex: util_pkg_install_find_sub_package_list_dir_path 'xfce'
util_pkg_install_find_sub_package_list_dir_path () {
	local sub_name="$1"
	local type_name="install"

	util_find_sub_package_list_dir_path "$sub_name" "$type_name"
}

## Ex: util_pkg_install_find_sub_package_list_dir_path_list 'xfce' 'rofi' 'fcitx' 'gtk3' 'gtk2'
util_pkg_install_find_sub_package_list_dir_path_list () {
	local sub_name
	local type_name="install"

	for sub_name in "$@"; do
		#echo "$sub_name"

		util_find_sub_package_list_dir_path "$sub_name" "$type_name"
	done
}

## Ex: util_pkg_install_find_sub_package_list_name_list "xfce"
util_pkg_install_find_sub_package_list_name_list () {
	local list_name

	local sub_name="$1"
	local dir_path=$(util_pkg_install_find_sub_package_list_dir_path "$sub_name")

	if [ ! -d "$dir_path" ]; then
		util_debug_echo "[Debug] sub_install_package_list_dir_not_exist: $dir_path"
		return 1
	fi

	cd $dir_path

	for file_name in *; do
		#echo "$file_name"

		## rtrim('.txt')
		list_name=${file_name:0:-4}

		echo "$list_name"
	done

	cd "$OLDPWD"

}
#
### Tail: util_pkg_install #####################################################


### Head: util_pkg_remove ######################################################
#
## Ex: util_pkg_remove_load_all_sub_package_list
util_pkg_remove_load_all_sub_package_list () {
	local sub_name
	local type_name="remove"

	cd $THE_SUB_ON_DIR_PATH

	for sub_name in *; do
		util_load_type_sub_package_list "$sub_name" "$type_name"
	done

	cd "$OLDPWD"
}

## Ex: util_pkg_remove_find_sub_package_list_dir_path 'xfce'
util_pkg_remove_find_sub_package_list_dir_path () {
	local sub_name="$1"
	local type_name="remove"

	util_find_sub_package_list_dir_path "$sub_name" "$type_name"
}

## Ex: util_pkg_remove_find_sub_package_list_dir_path_list 'xfce' 'rofi' 'fcitx' 'gtk3' 'gtk2'
util_pkg_remove_find_sub_package_list_dir_path_list () {
	local sub_name
	local type_name="remove"

	for sub_name in "$@"; do
		#echo "$sub_name"

		util_find_sub_package_list_dir_path "$sub_name" "$type_name"
	done
}

## Ex: util_pkg_remove_find_sub_package_list_name_list "xfce"
util_pkg_remove_find_sub_package_list_name_list () {
	local list_name

	local sub_name="$1"
	local dir_path=$(util_pkg_remove_find_sub_package_list_dir_path "$sub_name")

	if [ ! -d "$dir_path" ]; then
		util_debug_echo "[Debug] sub_install_package_list_dir_not_exist: $dir_path"
		return 1
	fi

	cd $dir_path

	for file_name in *; do
		#echo "$file_name"

		## rtrim('.txt')
		list_name=${file_name:0:-4}

		echo "$list_name"
	done

	cd "$OLDPWD"

}
#
### Tail: util_pkg_remove ######################################################

#!/usr/bin/env bash

################################################################################
### Head: Url
##

# * https://github.com/samwhelp/play-ubuntu-18.04-plan/blob/master/project/style-tool/xfce/style-switch/install.sh
# * https://github.com/samwhelp/play-ubuntu-18.04-plan/blob/master/project/style-tool/xfce/style-switch/style-switch-xfce

##
### Tail: Url
################################################################################


################################################################################
### Head: Init
##
set -e ## for Exit immediately if a command exits with a non-zero status.
THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
THE_CMD_FILE_NAME=$(basename $0)
##
### Tail: Init
################################################################################


################################################################################
### Head: Util_Debug
##

util_debug_echo () {
	if is_debug; then
		echo "$@" 1>&2;
	fi
}

##
### Head: Util_Debug
################################################################################


################################################################################
### Head: Base
##
find_dir_path () {
	if [ ! -d $(dirname -- "$1") ]; then
		dirname -- "$1"
		return 1
	fi
	echo $(cd -P -- "$(dirname -- "$1")" && pwd -P)
}

##THIS_BASE_DIR_PATH=$(find_dir_path $0)

## $ export DEBUG_SS_CTRL_INSTALL=true
is_debug () {
	if [ "$DEBUG_SS_CTRL_INSTALL" = "true" ]; then
		return 0
	fi

	return 1
}

is_not_debug () {
	! is_debug
}

base_var_init () {

	#THE_PLAN_DIR_PATH=$(find_dir_path "$THE_BASE_DIR_PATH/../.")
	THE_PLAN_DIR_PATH=$(find_dir_path "$THE_BASE_DIR_PATH/.")

	THE_CMD_VERSION='0.1'

	THE_CMD_DIR_PATH="${THE_BASE_DIR_PATH}"

	if [ "none${THE_CMD_FILE_NAME}" = 'none' ]; then
		THE_CMD_FILE_NAME="style-switch-xfce-install"
	fi

	THE_CMD_FILE_PATH="${THE_CMD_DIR_PATH}/$THE_CMD_FILE_NAME"




	## Target
	## https://github.com/samwhelp/play-ubuntu-18.04-plan/blob/master/project/style-tool/xfce/style-switch/style-switch-xfce
	THE_TARGET_DOWNLOAD_URL='https://raw.githubusercontent.com/samwhelp/play-ubuntu-18.04-plan/master/project/style-tool/xfce/style-switch/style-switch-xfce'


	THE_TARGET_FILE_NAME="style-switch-xfce"
	THE_TARGET_FILE_PATH="${HOME}/bin/${THE_TARGET_FILE_NAME}"


}

base_var_dump () {

	is_not_debug && return 0

	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: var_dump"
	util_debug_echo "##"
	util_debug_echo "#"


	util_debug_echo "THE_PLAN_DIR_PATH=$THE_PLAN_DIR_PATH"

	util_debug_echo "THE_CMD_FILE_NAME=$THE_CMD_FILE_NAME"
	util_debug_echo "THE_CMD_FILE_PATH=$THE_CMD_FILE_PATH"
	util_debug_echo "THE_CMD_DIR_PATH=$THE_CMD_DIR_PATH"

	util_debug_echo "THE_TARGET_DOWNLOAD_URL=$THE_TARGET_DOWNLOAD_URL"
	util_debug_echo "THE_TARGET_FILE_NAME=$THE_TARGET_FILE_NAME"
	util_debug_echo "THE_TARGET_FILE_PATH=$THE_TARGET_FILE_PATH"



	util_debug_echo "#"
	util_debug_echo "##"
	util_debug_echo "### Tail: var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo
}


base_var_init

base_var_dump

##
### Tail: Base
################################################################################



################################################################################
### Head: Util_Install
##

util_make_bin_dir () {
	mkdir -p "$HOME/bin"
}

util_make_tmp_dir () {
	THE_TMP_DIR_PATH="/tmp/tmp.$$.$RANDOM"
	mkdir "$THE_TMP_DIR_PATH"
}

util_target_download_to_tmp_dir () {

	local tmp_file_path="${THE_TMP_DIR_PATH}/${THE_TARGET_FILE_NAME}"
	wget -c "$THE_TARGET_DOWNLOAD_URL" -O "$tmp_file_path"

}

util_target_install_from_tmp_dir () {

	local tmp_file_path="${THE_TMP_DIR_PATH}/${THE_TARGET_FILE_NAME}"

	echo "install -m 755 $tmp_file_path $THE_TARGET_FILE_PATH"
	install -m 755 "$tmp_file_path" "$THE_TARGET_FILE_PATH"

}

util_check_target_exists () {

	if ! [ -f "$THE_TARGET_FILE_PATH" ]; then ## file not exists
		return 0
	fi


	echo "File is exists:" "$THE_TARGET_FILE_PATH"
	echo

	echo "Try to backup:"
	echo

	local now=$(date +%Y%m%d_%s)
	local bak_dir_path="${HOME}/bin/${THE_TARGET_FILE_NAME}.bak"
	local bak_file_path="${bak_dir_path}/${THE_TARGET_FILE_NAME}.bak.$now"

	mkdir -p $bak_dir_path

	mv -v "$THE_TARGET_FILE_PATH" "${bak_file_path}"

	if [ "$?" != "0" ]; then
		echo
		echo 'Backup Failure!'
		exit 1
	fi

	echo

	return 0
}

util_target_print_version () {
	echo
	echo "Current Version:"

	"$THE_TARGET_FILE_PATH" version
}

util_target_download_and_install () {

	util_make_bin_dir

	util_make_tmp_dir

	util_target_download_to_tmp_dir

	util_check_target_exists && util_target_install_from_tmp_dir

	util_target_print_version

}


##
### Tail: Util_Install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	util_target_download_and_install

}

__main__

##
### Tail: Main
################################################################################

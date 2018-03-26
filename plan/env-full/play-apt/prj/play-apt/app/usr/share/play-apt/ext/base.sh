## THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

find_dir_path () {
	if [ ! -d $(dirname -- "$1") ]; then
		dirname -- "$1"
		return 1
	fi
	echo $(cd -P -- "$(dirname -- "$1")" && pwd -P)
}

##THIS_BASE_DIR_PATH=$(find_dir_path $0)

is_debug () {
	if [ "$DEBUG_PLAY_APT" = "true" ]; then
		return 0
	fi

	return 1
}

is_not_debug () {
	! is_debug
}

base_var_init () {

	THE_PLAN_NAME="play-apt"
	THE_PRJ_NAME="$THE_PLAN_NAME"
	THE_MAIN_CMD_NAME="mod-apt"


	THE_PLAN_DIR_PATH=$(find_dir_path "$THE_BASE_DIR_PATH/../.") ## /usr/share/play-apt


	THE_BIN_DIR_NAME="bin"
	THE_BIN_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_BIN_DIR_NAME" ## /usr/share/play-apt/bin

	THE_EXT_DIR_NAME="ext"
	THE_EXT_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_EXT_DIR_NAME" ## /usr/share/play-apt/ext


	THE_SUB_DIR_NAME="sub"
	THE_SUB_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_SUB_DIR_NAME" ## /usr/share/play-apt/sub

	THE_SUB_ON_DIR_NAME="on"
	THE_SUB_ON_DIR_PATH="$THE_SUB_DIR_PATH/$THE_SUB_ON_DIR_NAME" ## /usr/share/play-apt/sub/on

	THE_SUB_ALL_DIR_NAME="all"
	THE_SUB_ALL_DIR_PATH="$THE_SUB_DIR_PATH/$THE_SUB_ALL_DIR_NAME" ## /usr/share/play-apt/sub/all


	THE_XDG_CONFIG_DIR_NAME=".config"
	THE_XDG_CONFIG_DIR_PATH="$HOME/$THE_XDG_CONFIG_DIR_NAME" ## ~/.config



}

base_var_dump () {

	is_not_debug && return 0


	echo
	echo "### Head: var_dump #############################################################"
	echo "#"
	echo "#"

	echo "THE_PLAN_NAME=$THE_PLAN_NAME"
	echo "THE_PRJ_NAME=$THE_PRJ_NAME"
	echo "THE_MAIN_CMD_NAME=$THE_MAIN_CMD_NAME"


	echo "THE_PLAN_DIR_PATH=$THE_PLAN_DIR_PATH"


	echo "THE_BIN_DIR_NAME=$THE_BIN_DIR_NAME"
	echo "THE_BIN_DIR_PATH=$THE_BIN_DIR_PATH"

	echo "THE_EXT_DIR_NAME=$THE_EXT_DIR_NAME"
	echo "THE_EXT_DIR_PATH=$THE_EXT_DIR_PATH"

	echo "THE_SUB_DIR_NAME=$THE_SUB_DIR_NAME"
	echo "THE_SUB_DIR_PATH=$THE_SUB_DIR_PATH"

	echo "THE_SUB_ON_DIR_NAME=$THE_SUB_ON_DIR_NAME"
	echo "THE_SUB_ON_DIR_PATH=$THE_SUB_ON_DIR_PATH"

	echo "THE_SUB_ALL_DIR_NAME=$THE_SUB_ALL_DIR_NAME"
	echo "THE_SUB_ALL_DIR_PATH=$THE_SUB_ALL_DIR_PATH"


	echo "#"
	echo "#"
	echo "### Tail: var_dump #############################################################"
	echo
}

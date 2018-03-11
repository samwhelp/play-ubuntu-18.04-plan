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
	if [ "$DEBUG_PLAY_LXQT" = "true" ]; then
		return 0
	fi

	return 1
}

is_not_debug () {
	! is_debug
}

base_var_init () {

	THE_PLAN_DIR_PATH=$(find_dir_path "$THE_BASE_DIR_PATH/../.") ## /usr/share/play-lxqt/

	THE_BIN_DIR_NAME="bin"
	THE_BIN_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_BIN_DIR_NAME" ## /usr/share/play-lxqt/bin

	THE_LIB_DIR_NAME="lib"
	THE_LIB_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_LIB_DIR_NAME" ## /usr/share/play-lxqt/lib

}

base_var_dump () {

	is_not_debug && return 0

	echo
	echo "### Head: var_dump lib #########################################################"
	echo "#"
	echo "#"


	echo "THE_PLAN_DIR_PATH=$THE_PLAN_DIR_PATH"

	echo "THE_BIN_DIR_NAME=$THE_BIN_DIR_NAME"
	echo "THE_BIN_DIR_PATH=$THE_BIN_DIR_PATH"

	echo "THE_LIB_DIR_NAME=$THE_LIB_DIR_NAME"
	echo "THE_LIB_DIR_PATH=$THE_LIB_DIR_PATH"

	echo "#"
	echo "#"
	echo "### Tail: var_dump lib #########################################################"
	echo
}

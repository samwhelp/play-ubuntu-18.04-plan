
### main ###
#
#

main_env_profile_list () {
	base_env_profile_list
}

main_env_profile_use () {
	if [ $# -eq 0 ]; then
		base_env_profile_use_get
		return 0
	fi

	echo -n 'Old: '
	base_env_profile_use_get

	if base_env_profile_use_set "$1"; then
		echo -n 'New: '
		base_env_profile_use_get
		return 0
	fi

	echo 'AllowProfile:'
	echo

	main_env_profile_list

}

main_env_get () {

	if [ $# -eq 0 ]; then
		echo 'Need Key Name'
		return 1
	fi

	local key
	local profile
	profile=$(base_env_profile_use_get)
	key="$1"

	base_env_get "$profile" "$key"

}

main_env_set () {
	#echo 'base_env_set'

	if [ $# -lt 1 ]; then
		echo 'Need key name'
		return 1
	fi

	local profile=$(base_env_profile_use_get)
	local key="$1"
	shift 1
	local val="$@"

	base_env_set "$profile" "$key" "$val"
}

main_env_reset () {
	#echo 'base_env_reset'

	if [ $# -lt 1 ]; then
		echo 'Need key name'
		return 1
	fi

	local profile=$(base_env_profile_use_get)
	local key="$1"

	base_env_reset "$profile" "$key"

}

#
#
### main ###


### func ###
#
#

is_file_exists () {
	local file_path="$1"
	if test -f "$file_path"; then
		return 0
	fi

	return 1
}

is_file_not_exists () {
	! is_file_exists "$@"
}

base_env_dir_prepare () {
	mkdir -p "$THE_ENV_USER_DEFAULT_DIR_PATH"
}

base_env_profile_list () {
	base_env_dir_prepare
	ls "$THE_ENV_DIR_PATH" -1 ## ls /usr/share/play-lxqt/var/env -1
}

is_in_env_profile_list () {
	local list=$(base_env_profile_list)
	local item
	for item in $list; do
		[ "$item" == "$1" ] && return 0
	done

	return 1
}

is_not_in_env_profile_list () {
	! is_in_env_profile_list "$@"
}

base_env_profile_use_get () {
	if is_user_env_use_file_not_exist; then
		echo "$THE_ENV_DEFAULT_PROFILE"
		return 1
	fi

	local name=$(user_env_profile_use_get)

	if is_in_env_profile_list "$name"; then
		echo "$name"
		return 1
	fi

	return 0
}

base_env_profile_use_set () {
	local name="$1"

	if is_not_in_env_profile_list "$name"; then
		echo "NotExist: $name"
		return 1
	fi

	echo "$1" > "$THE_ENV_USER_USE_FILE_PATH" ## ~/.config/play-lxqt/env/.use

	return 0
}


is_plan_env_use_file_not_exist () {
	! test -f $THE_ENV_USE_FILE_PATH ## /usr/share/play-lxqt/env/.use
}

is_user_env_use_file_not_exist () {
	! test -f $THE_ENV_USER_USE_FILE_PATH ## ~/.config/play-lxqt/env/.use
}


plan_env_profile_use_get () {
	if is_plan_env_use_file_not_exist; then
		echo "$THE_ENV_DEFAULT_PROFILE" ## default
		return 1
	fi

	cat "$THE_ENV_USE_FILE_PATH" ## cat /usr/share/play-lxqt/var/env/.use
}

user_env_profile_use_get () {
	if is_user_env_use_file_not_exist; then
		echo "$THE_ENV_DEFAULT_PROFILE" ## default
		return 1
	fi

	cat "$THE_ENV_USER_USE_FILE_PATH" ## cat ~/.config/play-lxqt/env/.use
}

plan_env_profile_dir_path () {
	echo "$THE_ENV_DIR_PATH/$1" ## /usr/share/play-lxqt/var/env/$1
}

user_env_profile_dir_path () {
	echo "$THE_ENV_USER_DIR_PATH/$1" ## ~/.config/play-lxqt/env/$1
}


plan_env_default_val_file_path () {
	echo "$THE_ENV_DEFAULT_PROFILE_DIR_PATH/$1" ## /usr/share/play-lxqt/var/env/default/$1
}

plan_env_val_file_path () {
	echo "$THE_ENV_DIR_PATH/$1/$2" ## /usr/share/play-lxqt/var/env/$1/$2
}

user_env_val_file_path () {
	echo "$THE_ENV_USER_DIR_PATH/$1/$2" ## ~/.config/play-lxqt/env/$1/$2
}

base_env_try_val_file_path () {
	local val_file_path="$1"
	if test -f "$val_file_path"; then
		echo "$val_file_path"
		return 0
	fi

	return 1
}

base_env_val_file_path () {
	local val_file_path

	val_file_path=$(user_env_val_file_path "$1" "$2") ## ~/.config/play-lxqt/env/$1/$2
	base_env_try_val_file_path "$val_file_path" && return 0

	val_file_path=$(plan_env_val_file_path "$1" "$2") ## /usr/share/play-lxqt/var/env/$1/$2
	base_env_try_val_file_path "$val_file_path" && return 0

	val_file_path=$(plan_env_default_val_file_path "$2") ## /usr/share/play-lxqt/var/env/default/$2
	base_env_try_val_file_path "$val_file_path" && return 0

	return 1
}

base_env_default_val_file_path () {
	local val_file_path

	val_file_path=$(plan_env_val_file_path "$1" "$2") ## /usr/share/play-lxqt/var/env/$1/$2
	base_env_try_val_file_path "$val_file_path" && return 0

	val_file_path=$(plan_env_default_val_file_path "$2") ## /usr/share/play-lxqt/var/env/default/$2
	base_env_try_val_file_path "$val_file_path" && return 0

	return 1
}

base_env_get () {
	local profile="$1"
	local key="$2"
	local val_file_path

	val_file_path=$(base_env_val_file_path "$profile" "$key")

	## if ! test -f "$val_file_path"; then ## also work
	if [ "$?" != "0" ]; then
		echo
		return 1
	fi

	cat "$val_file_path"

	return 0
}

base_env_get_default () {
	local profile="$1"
	local key="$2"
	local val_file_path

	val_file_path=$(base_env_default_val_file_path "$profile" "$key")

	if [ "$?" != "0" ]; then
		echo
		return 1
	fi

	cat "$val_file_path"

	return 0
}


base_env_set () {
	local profile="$1"
	local key="$2"
	local val="$3"
	local user_profile_dir_path
	local plan_val_file_path
	local user_val_file_path

	plan_val_file_path=$(plan_env_val_file_path "$profile" "$key") ## ~/.config/play-lxqt/env/$1/$2

	if is_file_not_exists "$plan_val_file_path"; then
		echo "key not allowed: $key"
		return 1
	fi

	user_profile_dir_path=$(user_env_profile_dir_path "$profile") # ~/.config/play-lxqt/env/$profile

	mkdir -p "$user_profile_dir_path"

	user_val_file_path=$(user_env_val_file_path "$profile" "$key") # ~/.config/play-lxqt/env/$profile/$key

	echo "$val" > "$user_val_file_path"

	return 0
}


base_env_reset () {
	local profile="$1"
	local key="$2"

	local user_val_file_path

	user_val_file_path=$(user_env_val_file_path "$profile" "$key") # ~/.config/play-lxqt/env/$profile/$key

	if is_file_exists "$user_val_file_path"; then
		rm "$user_val_file_path"
		return 0
	fi


	return 0
}

#
#
### func ###

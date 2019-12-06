#!/usr/bin/env bash

set -e


################################################################################
### Head: util_package
##
util_package_find_list () {
	local file_path="$1"
	cat $file_path  | while IFS='' read -r line; do
		trim_line=$(echo $line) # trim

		## https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html
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

main_package_find_list () {
	util_package_find_list "package-list.txt"
}

main_package_find_list_raw () {
	cat "package-list.txt"
}
##
### Tail: util_package
################################################################################


################################################################################
### Head: main
##
main_package_install () {
	# sudo apt-get install $(cat package-list.txt)
	# sudo apt-get install $(main_package_find_list_raw)
	sudo apt-get install $(main_package_find_list)
}

main_package_install
##
### Tail: main
################################################################################


set -e ##

#echo $THE_BASE_DIR_PATH
## override
THE_BASE_DIR_PATH="$THE_BASE_DIR_PATH/../share/play-tool/ext"
source "$THE_BASE_DIR_PATH/_base.sh"

base_var_init

base_var_dump

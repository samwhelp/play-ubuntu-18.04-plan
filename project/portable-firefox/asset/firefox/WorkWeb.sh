#!/usr/bin/env bash

THE_BASE_DIR_PATH="$(cd -P -- "$(dirname -- "$0")" && pwd -P)"
THE_PLAN_DIR_PATH="$THE_BASE_DIR_PATH/.."

THE_TARGET="WorkWeb"

THE_PROFILE="$THE_PLAN_DIR_PATH/profile/$THE_TARGET/"

#THE_FIREFOX="$THE_PLAN_DIR_PATH/version/$THE_TARGET/firefox --new-instance --profile $THE_PROFILE"
#THE_FIREFOX="$THE_PLAN_DIR_PATH/version/$THE_TARGET/firefox -private-window --profile $THE_PROFILE"
THE_FIREFOX="$THE_PLAN_DIR_PATH/version/$THE_TARGET/firefox -new-window --profile $THE_PROFILE"

# echo $THE_PROFILE
# echo $THE_FIREFOX

$THE_FIREFOX

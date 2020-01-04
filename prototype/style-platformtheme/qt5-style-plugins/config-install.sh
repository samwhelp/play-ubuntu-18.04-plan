#!/usr/bin/env bash

set -e


################################################################################
### Head: platformtheme
##
platformtheme_config_install () {

	sudo install -m 644 "./config/platformtheme/99platformtheme" "/etc/X11/Xsession.d/99platformtheme"
	echo "sudo install -m 644 ./config/platformtheme/99platformtheme /etc/X11/Xsession.d/99platformtheme"

}
##
### Tail: platformtheme
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	platformtheme_config_install


}
## start
main_config_install

##
### Tail: main
################################################################################

#!/usr/bin/env bash

set -e


################################################################################
### Head: platformtheme
##
platformtheme_config_remove () {

	sudo rm -f "/etc/X11/Xsession.d/99platformtheme"
	echo "sudo rm -f /etc/X11/Xsession.d/99platformtheme"

}
##
### Tail: platformtheme
################################################################################


################################################################################
### Head: main
##
main_config_remove () {

	platformtheme_config_remove


}
## start
main_config_remove

##
### Tail: main
################################################################################

#!/usr/bin/env bash

set -e


################################################################################
### Head: sync_profile
##
fcitx_sync_config_profile () {

	echo "cp './config/fcitx/profile' '../../prototype/de-basic/play-gnome/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/de-basic/play-gnome/config/fcitx/profile'

	echo "cp './config/fcitx/profile' '../../prototype/de-basic/play-i3/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/de-basic/play-i3/config/fcitx/profile'

	echo "cp './config/fcitx/profile' '../../prototype/de-basic/play-lxqt/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/de-basic/play-lxqt/config/fcitx/profile'

	echo "cp './config/fcitx/profile' '../../prototype/de-basic/play-xfce/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/de-basic/play-xfce/config/fcitx/profile'


	echo "cp './config/fcitx/profile' '../../prototype/de-box/play-fluxbox/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/de-box/play-fluxbox/config/fcitx/profile'

	echo "cp './config/fcitx/profile' '../../prototype/de-box/play-icewm/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/de-box/play-icewm/config/fcitx/profile'

	echo "cp './config/fcitx/profile' '../../prototype/de-box/play-openbox/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/de-box/play-openbox/config/fcitx/profile'

	echo "cp './config/fcitx/profile' '../../prototype/de-box/play-pekwm/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/de-box/play-pekwm/config/fcitx/profile'


	echo "cp './config/fcitx/profile' '../../prototype/de-tiling/play-bspwm/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/de-tiling/play-bspwm/config/fcitx/profile'

	echo "cp './config/fcitx/profile' '../../prototype/de-tiling/play-spectrwm/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/de-tiling/play-spectrwm/config/fcitx/profile'


	echo "cp './config/fcitx/profile' '../../prototype/de-lxqt-with-wm/lxqt-with-openbox/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/de-lxqt-with-wm/lxqt-with-openbox/config/fcitx/profile'

	echo "cp './config/fcitx/profile' '../../prototype/de-lxqt-with-wm-separate-xsession/lxqt-with-i3/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/de-lxqt-with-wm-separate-xsession/lxqt-with-i3/config/fcitx/profile'


	echo "cp './config/fcitx/profile' '../../prototype/xsession-wm-xfwm4/xsession-wm-xfwm4/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/xsession-wm-xfwm4/xsession-wm-xfwm4/config/fcitx/profile'

	echo "cp './config/fcitx/profile' '../../prototype/xsession-wm-xfwm4/xsession-wm-xfwm4-with-cairo-dock/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/xsession-wm-xfwm4/xsession-wm-xfwm4-with-cairo-dock/config/fcitx/profile'

	echo "cp './config/fcitx/profile' '../../prototype/xsession-wm-xfwm4/xsession-wm-xfwm4-with-tint2/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/xsession-wm-xfwm4/xsession-wm-xfwm4-with-tint2/config/fcitx/profile'


	echo "cp './config/fcitx/profile' '../../prototype/xsession-wm-metacity/metacity/xsession-wm-metacity-with-cairo-dock/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/xsession-wm-metacity/metacity/xsession-wm-metacity-with-cairo-dock/config/fcitx/profile'

	echo "cp './config/fcitx/profile' '../../prototype/xsession-wm-metacity/metacity/xsession-wm-metacity-with-tint2/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/xsession-wm-metacity/metacity/xsession-wm-metacity-with-tint2/config/fcitx/profile'


	echo "cp './config/fcitx/profile' '../../prototype/xsession-wm-metacity/marco/xsession-wm-marco-with-cairo-dock/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/xsession-wm-metacity/marco/xsession-wm-marco-with-cairo-dock/config/fcitx/profile'

	echo "cp './config/fcitx/profile' '../../prototype/xsession-wm-metacity/marco/xsession-wm-marco-with-tint2/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/xsession-wm-metacity/marco/xsession-wm-marco-with-tint2/config/fcitx/profile'


	echo "cp './config/fcitx/profile' '../../prototype/xsession-wm-metacity/mutter/xsession-wm-mutter-with-tint2/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/xsession-wm-metacity/mutter/xsession-wm-mutter-with-tint2/config/fcitx/profile'



}

##
### Tail: sync_profile
################################################################################


################################################################################
### Head: main
##
main_sync () {

	fcitx_sync_config_profile

}
## start
main_sync

##
### Tail: main
################################################################################

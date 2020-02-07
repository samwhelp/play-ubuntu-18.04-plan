default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make sync'
	@echo

.PHONY: help


sync:
	install -m 664 ../xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml ../../../play-lxqt/config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
	install -m 664 ../xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml ../../../play-lxqt/config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml

	install -m 664 ../xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml ../../../../xsession-wm-xfwm4/xsession-wm-xfwm4/config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
	install -m 664 ../xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml ../../../../xsession-wm-xfwm4/xsession-wm-xfwm4/config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml

	install -m 664 ../xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml ../../../../xsession-wm-xfwm4/xsession-wm-xfwm4-with-tint2/config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
	install -m 664 ../xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml ../../../../xsession-wm-xfwm4/xsession-wm-xfwm4-with-tint2/config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml

	install -m 664 ../xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml ../../../../xsession-wm-xfwm4/xsession-wm-xfwm4-with-cairo-dock/config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
	install -m 664 ../xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml ../../../../xsession-wm-xfwm4/xsession-wm-xfwm4-with-cairo-dock/config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml

.PHONY: sync

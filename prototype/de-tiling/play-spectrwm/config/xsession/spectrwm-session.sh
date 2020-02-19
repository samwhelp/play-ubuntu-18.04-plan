#!/bin/sh


################################################################################
### Head: Manual
##



##
### Tail: Manual
################################################################################


################################################################################
### Head: Xresources
##


#test -f "$HOME/.Xresources" && xrdb -load "$HOME/.Xresources"
#test -f "$HOME/.Xresources" && xrdb -merge "$HOME/.Xresources"
#/usr/local/bin/xresources-load.sh

xresources-load.sh


##
### Tail: Xresources
################################################################################


################################################################################
### Head: Network
##

## network manager applet
#sleep 1 &&
#nm-applet &

## Note: use /etc/xdg/autostart/nm-applet.desktop


## blueman-applet (Package: blueman)
#blueman-applet
## Note: use /etc/xdg/autostart/blueman.desktop


##
### Tail: Network
################################################################################


################################################################################
### Head: Mixer
##

## mixer applet

## volumeicon (Package: volumeicon-alsa)
#volumeicon &


## mate-volume-control-applet (Package: mate-media)
##mate-volume-control-applet &

##
### Tail: Mixer
################################################################################


################################################################################
### Head: Desktop
##


## Just Wallpaper

#THE_WALLPAPER_FILE_PATH="/usr/share/backgrounds/Manhattan_Sunset_by_Giacomo_Ferroni.jpg"
#THE_WALLPAPER_FILE_PATH="/usr/share/backgrounds/Spices_in_Athens_by_Makis_Chourdakis.jpg"
#feh --bg-scale "$THE_WALLPAPER_FILE_PATH" &

## move to ~/bin/wallpaper.sh
wallpaper.sh &

##
### Tail: Desktop
################################################################################


################################################################################
### Head: Compton
##

## compton
#compton &
#compton --config ~/.config/compton.conf &
#compton --config ~/.config/compton/compton.conf &

compton --config ~/.config/spectrwm/compton/compton.conf &


##
### Tail: Compton
################################################################################


################################################################################
### Head: Policykit Agent
##

## [policykit-1-gnome]
## $ dpkg -L policykit-1-gnome | grep desktop
## /etc/xdg/autostart/polkit-gnome-authentication-agent-1.desktop
## $ grep '^Exec=' $(dpkg -L policykit-1-gnome | grep desktop)
## Exec=/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1
## $ grep '^Exec=' $(dpkg -L policykit-1-gnome | grep desktop) | cut -d '=' -f 2
## /usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1

/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &


## [lxqt-policykit]
## $ dpkg -L lxqt-policykit | grep desktop
## /etc/xdg/autostart/lxqt-policykit-agent.desktop
## $ grep '^Exec=' $(dpkg -L lxqt-policykit | grep desktop)
## Exec=lxqt-policykit-agent
## $ grep '^Exec=' $(dpkg -L lxqt-policykit | grep desktop) | cut -d '=' -f 2
## lxqt-policykit-agent

#lxqt-policykit-agent &


##
### Tail: Policykit Agent
################################################################################


################################################################################
### Head: Screen Saver
##


## xscreensaver
## /etc/xdg/autostart/xscreensaver.desktop
/usr/share/xscreensaver/xscreensaver-wrapper.sh -no-splash &


##
### Tail: Screen Saver
################################################################################


################################################################################
### Head: Fcitx
##

## $ dpkg -L fcitx-data | grep fcitx.desktop
## /usr/share/applications/fcitx.desktop
## $ grep '^Exec=' /usr/share/applications/fcitx.desktop
## $ grep '^Exec=' $(dpkg -L fcitx-data | grep fcitx.desktop)
## Exec=fcitx

fcitx &

##
### Tail: Fcitx
################################################################################


################################################################################
### Head: stalonetray
##

#spectrwm-stalonetray-start.sh &

##
### Tail: stalonetray
################################################################################



################################################################################
### Head: Terminal
##

## sakura
#sakura -m &

##
### Tail: Terminal
################################################################################


################################################################################
### Head: Window Manager
##

## ../../../concept/environment/locale.md
# $ LANG=zh_TW.UTF-8 LANGUAGE=zh_TW.UTF-8 LC_ALL=zh_TW.UTF-8 locale
# $ LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8 locale

#LANG=zh_TW.UTF-8 LANGUAGE=zh_TW.UTF-8 LC_ALL=zh_TW.UTF-8 exec spectrwm
#LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8 exec spectrwm

exec spectrwm

##
### Tail: Window Manager
################################################################################

#!/bin/sh


################################################################################
### Head: Manual
##

#

##
### Tail: Manual
################################################################################


################################################################################
### Head: Network
##

## network manager applet
#sleep 1 &&
nm-applet &

##
### Tail: Network
################################################################################


################################################################################
### Head: Mixer
##

## sound mixer
volumeicon &

##
### Tail: Mixer
################################################################################


################################################################################
### Head: Desktop
##

## Use [pcmanfm-qt] for desktop
## /etc/xdg/autostart/lxqt-desktop.desktop
## grep '^Exec=' /etc/xdg/autostart/lxqt-desktop.desktop
pcmanfm-qt --desktop --profile=mutter-session &

## Use [xfdesktop] for desktop
#xfdesktop &

## Just Wallpaper

#THE_WALLPAPER_FILE_PATH="/usr/share/backgrounds/Manhattan_Sunset_by_Giacomo_Ferroni.jpg"
#THE_WALLPAPER_FILE_PATH="/usr/share/backgrounds/Spices_in_Athens_by_Makis_Chourdakis.jpg"
#feh --bg-scale "$THE_WALLPAPER_FILE_PATH" &

##
### Tail: Desktop
################################################################################


################################################################################
### Head: Panel
##

## stalonetray
#stalonetray &

## Panel

## tint2
#tint2 &
#tint2 -c "$HOME/.config/tint2/tint2rc" &
tint2 -c "$HOME/.config/mutter-session/tint2/tint2rc" &

## xfce4-panel
#xfce4-panel &

## fbpanel
#fbpanel &

## lxpanel
#lxpanel &

## lxqt-panel
#lxqt-panel &

## cairo-dock
#cairo-dock &
#cairo-dock -o &
#cairo-dock -c &

##
### Tail: Panel
################################################################################


################################################################################
### Head: Compton
##

## Please use [mutter --compositor=off] if use compton.

## compton
#compton &
#compton --config ~/.config/compton/compton.conf &
#compton --config ~/.config/mutter-session/compton/compton.conf &

##
### Tail: Compton
################################################################################


################################################################################
### Head: Shortcut
##

## global key shortcut
#lxqt-globalkeysd &
lxqt-globalkeysd --config-file="$HOME/.config/mutter-session/lxqt/globalkeyshortcuts.conf" &

##
### Tail: Shortcut
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

# $ man mutter

# $ mutter -h
# Usage:
#   mutter [OPTION…]
#
# Help Options:
#   -h, --help                 Show help options
#
# Application Options:
#   --sm-disable               Disable connection to session manager
#   -r, --replace              Replace the running window manager
#   --sm-client-id=ID          Specify session management ID
#   -d, --display=DISPLAY      X Display to use
#   --sm-save-file=FILE        Initialize session from savefile
#   --sync                     Make X calls synchronous
#   --wayland                  Run as a wayland compositor
#   --nested                   Run as a nested compositor
#   --display-server           Run as a full display server, rather than nested
#   --x11                      Run with X11 backend
#   --version                  Print version
#   --mutter-plugin=PLUGIN     Mutter plugin to use




## mutter
MUTTER_OPT_REPLACE="--replace"

exec mutter "$MUTTER_OPT_REPLACE"

##
### Tail: Window Manager
################################################################################

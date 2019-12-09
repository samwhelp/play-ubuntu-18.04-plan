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
#pcmanfm-qt --desktop --profile=lxqt &

## Use [xfdesktop] for desktop
#xfdesktop &

## Just Wallpaper

#THE_WALLPAPER_FILE_PATH="/usr/share/backgrounds/Manhattan_Sunset_by_Giacomo_Ferroni.jpg"
THE_WALLPAPER_FILE_PATH="/usr/share/backgrounds/Spices_in_Athens_by_Makis_Chourdakis.jpg"

feh --bg-scale "$THE_WALLPAPER_FILE_PATH" &

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
tint2 -c "$HOME/.config/xfwm4-session/tint2/tint2rc" &

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

##
### Tail: Panel
################################################################################


################################################################################
### Head: Compton
##

## Please use [xfwm4 --compositor=off] if use compton.

## compton
#compton &
#compton --config ~/.config/compton/compton.conf &
compton --config ~/.config/xfwm4-session/compton/compton.conf &

##
### Tail: Compton
################################################################################


################################################################################
### Head: Shortcut
##

## global key shortcut
#lxqt-globalkeysd &
lxqt-globalkeysd --config-file="$HOME/.config/xfwm4-session/lxqt/globalkeyshortcuts.conf" &

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

# $ man xfwm4

# $ xfwm4 -h
# Usage:
#   xfwm4 [OPTION…] [ARGUMENTS...]
#
# Help Options:
#   -h, --help                   Show help options
#   --help-all                   Show all help options
#   --help-gtk                   Show GTK+ Options
#   --help-sm-client             Show session management options
#
# Application Options:
#   --daemon                     Fork to the background
#   --compositor=on|off|auto     Set the compositor mode
#   --replace                    Replace the existing window manager
#   -V, --version                Print version information and exit
#   --display=DISPLAY            X display to use



## xfwm4
XFWM4_OPT_REPLACE="--replace"
#XFWM4_OPT_COMPOSITOR="--compositor=on"
XFWM4_OPT_COMPOSITOR="--compositor=off"

exec xfwm4 "$XFWM4_OPT_REPLACE" "$XFWM4_OPT_COMPOSITOR"

##
### Tail: Window Manager
################################################################################

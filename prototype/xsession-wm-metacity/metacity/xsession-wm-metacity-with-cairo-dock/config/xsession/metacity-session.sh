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
#tint2 -c "$HOME/.config/metacity-session/tint2/tint2rc" &

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
cairo-dock -c &

##
### Tail: Panel
################################################################################


################################################################################
### Head: Compton
##

## Please use [metacity --compositor=off] if use compton.

## compton
#compton &
#compton --config ~/.config/compton/compton.conf &
compton --config ~/.config/metacity-session/compton/compton.conf &

##
### Tail: Compton
################################################################################


################################################################################
### Head: Shortcut
##

## global key shortcut
lxqt-globalkeysd &


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

# $ man metacity

# $ metacity -h
# Usage:
#   metacity [OPTION…]
#
# Help Options:
#   -h, --help                Show help options
#
# Application Options:
#   --sm-disable              Disable connection to session manager
#   --replace                 Replace the running window manager with Metacity
#   --sm-client-id=ID         Specify session management ID
#   -d, --display=DISPLAY     X Display to use
#   --sm-save-file=FILE       Initialize session from savefile
#   --version                 Print version
#   --sync                    Make X calls synchronous
#   -c, --composite           Turn compositing on
#   --no-composite            Turn compositing off
#   --no-force-fullscreen     Don't make fullscreen windows that are maximized and have no decorations




## metacity
METACITY_OPT_REPLACE="--replace"
#METACITY_OPT_COMPOSITOR="--composite"
METACITY_OPT_COMPOSITOR="--no-composite"

exec metacity "$METACITY_OPT_REPLACE" "$METACITY_OPT_COMPOSITOR"

##
### Tail: Window Manager
################################################################################

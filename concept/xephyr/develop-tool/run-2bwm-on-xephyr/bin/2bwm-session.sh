#!/usr/bin/env bash

# https://wiki.archlinux.org/index.php/2bwm
# Set a nice background.
#xsetroot -solid grey20


################################################################################
## Head: Set Cursor
##

#xsetroot -cursor_name left_ptr
#xsetroot -cursor_name plus -fg white -bg black


##
## Tail: Set Cursor
################################################################################


# Load resources.
test -f "$HOME/.Xresources"  && xrdb -load "$HOME/.Xresources" &

compton --config "$HOME/.config/2bwm/compton/compton.conf" &


tint2 -c "$HOME/.config/2bwm/tint2/tint2rc" &
#tint2 &

feh --bg-scale "/usr/share/backgrounds/Spices_in_Athens_by_Makis_Chourdakis.jpg" &

sakura &

# Start window manager in the background. If it dies, X still lives.
exec 2bwm

#!/usr/bin/env bash

## https://wiki.gnome.org/Apps/Terminal/FAQ


echo
echo '$ gsettings list-recursively | grep org.gnome.Terminal.Legacy'
echo
gsettings list-recursively | grep org.gnome.Terminal.Legacy



echo
echo '$ gsettings get org.gnome.Terminal.ProfilesList list'
echo
gsettings get org.gnome.Terminal.ProfilesList list

echo
echo '$ gsettings get org.gnome.Terminal.ProfilesList default'
echo
gsettings get org.gnome.Terminal.ProfilesList default

echo
profile=$(gsettings get org.gnome.Terminal.ProfilesList default)
profile=${profile:1:-1} # remove leading and trailing single quotes
echo "profile=${profile}"

echo
echo '$ gsettings list-recursively "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/"'
echo
gsettings list-recursively "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/"

echo
echo '$ gsettings list-keys "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/"'
echo
gsettings list-keys "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/"

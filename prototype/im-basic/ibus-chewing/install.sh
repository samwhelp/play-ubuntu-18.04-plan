#!/usr/bin/env bash


echo
echo "sudo apt-get install ibus-chewing"
sudo apt-get install ibus-chewing


echo
echo "im-config -n ibus"
im-config -n ibus


echo
echo "cat ~/.xinputrc"
cat ~/.xinputrc


## gsettings list-recursively | grep ibus
## gsettings list-recursively | grep ibus | grep chewing


echo "gsettings set org.freedesktop.ibus.general.hotkey triggers \"['<Control>space']\""
gsettings set org.freedesktop.ibus.general.hotkey triggers "['<Control>space']"
#gsettings reset org.freedesktop.ibus.general.hotkey triggers
#gsettings get org.freedesktop.ibus.general.hotkey triggers


echo "gsettings set org.freedesktop.ibus.general preload-engines \"['xkb:us::eng', 'chewing']\""
gsettings set org.freedesktop.ibus.general preload-engines "['xkb:us::eng', 'chewing']"
#gsettings reset org.freedesktop.ibus.general preload-engines
#gsettings get org.freedesktop.ibus.general preload-engines

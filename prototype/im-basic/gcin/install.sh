#!/usr/bin/env bash

echo
echo "sudo apt-get install gcin gcin-qt5-immodule gcin-anthy gcin-voice"
sudo apt-get install gcin gcin-qt5-immodule gcin-anthy gcin-voice


echo
echo "im-config -n gcin"
im-config -n gcin


echo
echo "cat ~/.xinputrc"
cat ~/.xinputrc

#!/usr/bin/env bash

echo
echo "sudo apt-get install hime hime-qt5-immodule hime-anthy hime-chewing"
sudo apt-get install hime hime-qt5-immodule hime-anthy hime-chewing


echo
echo "im-config -n hime"
im-config -n hime


echo
echo "cat ~/.xinputrc"
cat ~/.xinputrc

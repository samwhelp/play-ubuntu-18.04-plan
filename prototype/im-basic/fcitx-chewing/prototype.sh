#!/usr/bin/env bash


echo
echo "sudo apt-get install fcitx-chewing"
sudo apt-get install fcitx-chewing


echo
echo "im-config -n fcitx"
im-config -n fcitx


echo
echo "cat ~/.xinputrc"
cat ~/.xinputrc


echo
echo "mkdir -p $HOME/.config/fcitx"
mkdir -p "$HOME/.config/fcitx"

echo
echo "cp ./config/set/profile $HOME/.config/fcitx/profile"
cp "./config/set/profile" "$HOME/.config/fcitx/profile"

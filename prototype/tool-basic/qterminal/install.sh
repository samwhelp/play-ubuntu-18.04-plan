#!/usr/bin/env bash


echo
echo "sudo apt-get install qterminal"
sudo apt-get install qterminal


echo
echo "mkdir -p $HOME/.config/qterminal.org"
mkdir -p "$HOME/.config/qterminal.org"


echo
echo "cp ./config/set/qterminal.ini $HOME/.config/qterminal.org/qterminal.ini"
cp "./config/set/qterminal.ini" "$HOME/.config/qterminal.org/qterminal.ini"

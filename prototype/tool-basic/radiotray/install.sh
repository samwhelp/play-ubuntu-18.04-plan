#!/usr/bin/env bash


echo
echo "sudo apt-get install radiotray"
sudo apt-get install radiotray


echo
echo "mkdir -p $HOME/.local/share/radiotray"
mkdir -p "$HOME/.local/share/radiotray"


echo
echo "cp ./config/basic/bookmarks.xml $HOME/.local/share/radiotray/bookmarks.xml"
cp ./config/basic/bookmarks.xml $HOME/.local/share/radiotray/bookmarks.xml


echo
echo "cat $HOME/.local/share/radiotray/bookmarks.xml"
cat "$HOME/.local/share/radiotray/bookmarks.xml"

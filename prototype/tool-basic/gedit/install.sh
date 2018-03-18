#!/usr/bin/env bash


## gsettings list-recursively | grep edit

#echo "gsettings set org.gnome.gedit.state.window side-panel-active-page 'GeditWindowDocumentsPanel'"
#gsettings set org.gnome.gedit.state.window side-panel-active-page 'GeditWindowDocumentsPanel'
echo "gsettings set org.gnome.gedit.state.window side-panel-active-page 'GeditFileBrowserPanel'"
gsettings set org.gnome.gedit.state.window side-panel-active-page 'GeditFileBrowserPanel'
#gsettings reset org.gnome.gedit.state.window side-panel-active-page
#gsettings get org.gnome.gedit.state.window side-panel-active-page


## gsettings list-recursively | grep edit | grep encodings


echo "gsettings set org.gnome.gedit.preferences.encodings candidate-encodings \"['UTF-8', 'BIG5', 'BIG5-HKSCS', 'EUC-TW', 'GB18030', 'GB2312', 'GBK', 'CURRENT', 'ISO-8859-15', 'UTF-16']\""
gsettings set org.gnome.gedit.preferences.encodings candidate-encodings "['UTF-8', 'BIG5', 'BIG5-HKSCS', 'EUC-TW', 'GB18030', 'GB2312', 'GBK', 'CURRENT', 'ISO-8859-15', 'UTF-16']"
#gsettings reset org.gnome.gedit.preferences.encodings candidate-encodings
#gsettings get org.gnome.gedit.preferences.encodings candidate-encodings

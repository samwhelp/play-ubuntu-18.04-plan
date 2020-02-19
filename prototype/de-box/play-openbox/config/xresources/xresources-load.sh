#!/usr/bin/env bash

#test -f "$HOME/.Xresources" && xrdb -load "$HOME/.Xresources"
test -f "$HOME/.Xresources" && xrdb -merge "$HOME/.Xresources"

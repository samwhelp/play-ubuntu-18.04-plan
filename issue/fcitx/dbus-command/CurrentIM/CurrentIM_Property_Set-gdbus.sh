#!/usr/bin/env bash

gdbus call --session --dest org.fcitx.Fcitx --object-path /inputmethod --method org.freedesktop.DBus.Properties.Set org.fcitx.Fcitx.InputMethod CurrentIM '<"chewing">'
#gdbus call --session --dest org.fcitx.Fcitx --object-path /inputmethod --method org.freedesktop.DBus.Properties.Set org.fcitx.Fcitx.InputMethod CurrentIM '<"fcitx-keyboard-us">'

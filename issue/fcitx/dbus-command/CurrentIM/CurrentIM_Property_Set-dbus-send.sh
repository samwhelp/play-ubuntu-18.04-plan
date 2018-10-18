#!/usr/bin/env bash

dbus-send --session --dest=org.fcitx.Fcitx --print-reply /inputmethod org.freedesktop.DBus.Properties.Set string:org.fcitx.Fcitx.InputMethod string:CurrentIM variant:string:'chewing'
#dbus-send --session --dest=org.fcitx.Fcitx --print-reply /inputmethod org.freedesktop.DBus.Properties.Set string:org.fcitx.Fcitx.InputMethod string:CurrentIM variant:string:'fcitx-keyboard-us'

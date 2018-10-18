#!/usr/bin/env bash

qdbus org.fcitx.Fcitx /inputmethod org.freedesktop.DBus.Properties.Set org.fcitx.Fcitx.InputMethod CurrentIM 'chewing'
#qdbus --literal org.fcitx.Fcitx /inputmethod org.freedesktop.DBus.Properties.Set org.fcitx.Fcitx.InputMethod CurrentIM 'chewing'
#qdbus org.fcitx.Fcitx /inputmethod org.freedesktop.DBus.Properties.Set org.fcitx.Fcitx.InputMethod CurrentIM 'fcitx-keyboard-us'
#qdbus --literal org.fcitx.Fcitx /inputmethod org.freedesktop.DBus.Properties.Set org.fcitx.Fcitx.InputMethod CurrentIM 'fcitx-keyboard-us'

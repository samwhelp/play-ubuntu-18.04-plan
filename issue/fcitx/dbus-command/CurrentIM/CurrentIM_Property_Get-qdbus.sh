#!/usr/bin/env bash

qdbus org.fcitx.Fcitx /inputmethod org.freedesktop.DBus.Properties.Get org.fcitx.Fcitx.InputMethod CurrentIM
#qdbus --literal org.fcitx.Fcitx /inputmethod org.freedesktop.DBus.Properties.Get org.fcitx.Fcitx.InputMethod CurrentIM

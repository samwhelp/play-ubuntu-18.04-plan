#!/usr/bin/env bash

dbus-send --session --dest=org.fcitx.Fcitx --print-reply /inputmethod org.freedesktop.DBus.Properties.Get string:org.fcitx.Fcitx.InputMethod string:CurrentIM

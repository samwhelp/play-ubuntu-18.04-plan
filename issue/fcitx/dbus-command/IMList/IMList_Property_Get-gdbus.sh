#!/usr/bin/env bash


gdbus call --session --dest org.fcitx.Fcitx --object-path /inputmethod --method org.freedesktop.DBus.Properties.Get org.fcitx.Fcitx.InputMethod IMList

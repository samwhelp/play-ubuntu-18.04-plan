#!/usr/bin/env bash


#gdbus call --session --dest org.fcitx.Fcitx --object-path /inputmethod --method org.freedesktop.DBus.Properties.Set org.fcitx.Fcitx.InputMethod IMList "<[('Keyboard - English (US)', 'fcitx-keyboard-us', 'en', true), ('Chewing', 'chewing', 'zh_TW', true)]>"

gdbus call --session --dest org.fcitx.Fcitx --object-path /inputmethod --method org.freedesktop.DBus.Properties.Set org.fcitx.Fcitx.InputMethod IMList '<[("Keyboard - English (US)", "fcitx-keyboard-us", "en", true), ("Chewing", "chewing", "zh_TW", true)]>'

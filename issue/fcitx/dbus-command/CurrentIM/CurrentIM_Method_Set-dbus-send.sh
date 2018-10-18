#!/usr/bin/env bash

dbus-send --session --dest=org.fcitx.Fcitx --print-reply /inputmethod org.fcitx.Fcitx.InputMethod.SetCurrentIM string:'chewing'
#dbus-send --session --dest=org.fcitx.Fcitx --print-reply /inputmethod org.fcitx.Fcitx.InputMethod.SetCurrentIM string:'fcitx-keyboard-us'

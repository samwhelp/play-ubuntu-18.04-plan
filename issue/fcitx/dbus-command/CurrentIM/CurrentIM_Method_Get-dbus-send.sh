#!/usr/bin/env bash

dbus-send --session --dest=org.fcitx.Fcitx --print-reply /inputmethod org.fcitx.Fcitx.InputMethod.GetCurrentIM

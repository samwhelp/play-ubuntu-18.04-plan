#!/usr/bin/env bash


qdbus --literal org.fcitx.Fcitx /inputmethod org.freedesktop.DBus.Properties.Get org.fcitx.Fcitx.InputMethod IMList

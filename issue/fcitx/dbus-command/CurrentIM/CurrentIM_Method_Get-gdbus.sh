#!/usr/bin/env bash

gdbus call --session --dest org.fcitx.Fcitx --object-path /inputmethod --method org.fcitx.Fcitx.InputMethod.GetCurrentIM

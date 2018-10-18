#!/usr/bin/env bash

gdbus call --session --dest org.fcitx.Fcitx --object-path /inputmethod --method org.fcitx.Fcitx.InputMethod.SetCurrentIM 'chewing'
#gdbus call --session --dest org.fcitx.Fcitx --object-path /inputmethod --method org.fcitx.Fcitx.InputMethod.SetCurrentIM 'fcitx-keyboard-us'

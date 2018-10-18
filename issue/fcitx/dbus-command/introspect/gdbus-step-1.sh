#!/usr/bin/env bash


gdbus introspect --session --dest org.fcitx.Fcitx --object-path / | less

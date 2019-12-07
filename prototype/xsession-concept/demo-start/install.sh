#!/usr/bin/env bash

## install
sudo install -m 644 "demo-session.desktop" "/usr/share/xsessions/demo-session.desktop"
sudo install -m 755 "demo-session.sh" "/usr/bin/demo-session.sh"

echo "Install:"

## check
ls -l "/usr/share/xsessions/demo-session.desktop"
ls -l "/usr/bin/demo-session.sh"

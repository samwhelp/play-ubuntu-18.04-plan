#!/usr/bin/env bash

## https://github.com/soimort/you-get.git

sudo apt-get install git ffmpeg

mkdir -p "$HOME/app/you-get/main"
cd "$HOME/app/you-get/main"

echo
echo "git clone https://github.com/soimort/you-get.git"
git clone https://github.com/soimort/you-get.git


mkdir -p "$HOME/bin"
cd "$HOME/bin"

echo
echo "ln -sf $HOME/app/you-get/main/you-get/you-get you-get"
ln -sf "$HOME/app/you-get/main/you-get/you-get" you-get

#!/usr/bin/env bash


echo "sudo cp ./config/zh_TW/locale /etc/default/locale"
sudo cp ./config/zh_TW/locale /etc/default/locale

echo

echo "cat /etc/default/locale"
cat /etc/default/locale

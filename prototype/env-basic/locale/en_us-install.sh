#!/usr/bin/env bash


echo "sudo cp ./config/en_US/locale /etc/default/locale"
sudo cp ./config/en_US/locale /etc/default/locale

echo

echo "cat /etc/default/locale"
cat /etc/default/locale

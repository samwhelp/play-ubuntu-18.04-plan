#!/usr/bin/env bash

## man whoami
#USER_NAME=$(id -un)
USER_NAME=$(whoami)

sed "s/AutomaticLogin=user/AutomaticLogin=${USER_NAME}/g" ./config/autologin/custom.conf > ./custom.conf

sudo cp ./custom.conf /etc/gdm3/custom.conf

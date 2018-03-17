#!/usr/bin/env bash

mkdir -p ./config/zh_TW

sed 's/en_US/zh_TW/g' ./config/en_US/locale > ./config/zh_TW/locale

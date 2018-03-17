#!/usr/bin/env bash

mkdir -p ./config/en_US

#sed 's/lzh_TW/en_US.UTF-8/g' config/original/locale
#sed -i 's/lzh_TW/en_US.UTF-8/g' config/original/locale

sed 's/lzh_TW/en_US.UTF-8/g' ./config/original/locale > ./config/en_US/locale

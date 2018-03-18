#!/usr/bin/env bash


set -e


#if ! command -v unzip > /dev/null; then
#	sudo apt-get install unzip
#fi

if ! type -p unzip > /dev/null; then
	echo
	echo "sudo apt-get install unzip"
	sudo apt-get install unzip
fi

if [ -e /usr/local/share/fonts/CNS11643 ]; then
	echo
	echo 'Directory exits: /usr/local/share/fonts/CNS11643'
	echo 'Please remove /usr/local/share/fonts/CNS11643 first!'
	echo
	echo 'sudo rm /usr/local/share/fonts/CNS11643 -rf'
	echo 'or'
	echo 'sudo mv /usr/local/share/fonts/CNS11643 ./CNS11643.bak'
	exit 1
fi


#echo
#echo "mkdir -p $HOME/tmp"
#mkdir -p "$HOME/tmp"

#echo
#echo "cd $HOME/tmp"
#cd "$HOME/tmp"


if [ -e "./Open_Data" ]; then
	echo
	echo "rm -rf ./Open_Data"
	rm -rf "./Open_Data"
fi

if [ -e "./CNS11643" ]; then
	echo
	echo "rm -rf ./CNS11643"
	rm -rf "./CNS11643"
fi


# * http://data.gov.tw/node/5961
# * http://data.gov.tw/node/gov/resource/27234
# * http://www.cns11643.gov.tw/


echo
echo "wget -c 'http://www.cns11643.gov.tw/AIDB/Open_Data.zip'"
wget -c 'http://www.cns11643.gov.tw/AIDB/Open_Data.zip'


echo
echo "unzip -O big5 Open_Data.zip"
unzip -O big5 Open_Data.zip


echo
echo "mv ./Open_Data/Fonts ./CNS11643"
mv ./Open_Data/Fonts ./CNS11643


echo
echo "sudo mv CNS11643 /usr/local/share/fonts/"
sudo mv CNS11643 /usr/local/share/fonts/


echo
echo "sudo chown root:staff /usr/local/share/fonts/CNS11643 -R"
sudo chown root:staff /usr/local/share/fonts/CNS11643 -R


echo
echo "sudo chmod 644 /usr/local/share/fonts/CNS11643/*"
sudo chmod 644 /usr/local/share/fonts/CNS11643/*


echo
echo "sudo chmod 755 /usr/local/share/fonts/CNS11643"
sudo chmod 755 /usr/local/share/fonts/CNS11643


echo
echo "ls /usr/local/share/fonts -l | grep CNS11643"
ls /usr/local/share/fonts -l | grep CNS11643


echo
echo "ls /usr/local/share/fonts/CNS11643"
ls /usr/local/share/fonts/CNS11643 -l


echo
echo "sudo fc-cache -fv"
sudo fc-cache -fv


echo
echo "fc-match -a | grep TW"
fc-match -a | grep TW


echo
echo "fc-list | grep TW"
fc-list | grep TW

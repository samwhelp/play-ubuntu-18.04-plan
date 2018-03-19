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

if [ -e /usr/local/share/fonts/Noto ]; then
	echo
	echo 'Directory exits: /usr/local/share/fonts/Noto'
	echo 'Please remove /usr/local/share/fonts/Noto first!'
	echo
	echo 'sudo rm /usr/local/share/fonts/Noto -rf'
	echo 'or'
	echo 'sudo mv /usr/local/share/fonts/Noto ./Noto.bak'
	exit 1
fi


#echo
#echo "mkdir -p $HOME/tmp"
#mkdir -p "$HOME/tmp"

#echo
#echo "cd $HOME/tmp"
#cd "$HOME/tmp"


if [ -e "./Noto" ]; then
	echo
	echo "rm -rf ./Noto"
	rm -rf "./Noto"
fi


# * https://www.google.com/get/noto/
# * https://www.google.com/get/noto/help/install/

echo
echo "wget -c 'https://noto-website-2.storage.googleapis.com/pkgs/Noto-hinted.zip'"
wget -c 'https://noto-website-2.storage.googleapis.com/pkgs/Noto-hinted.zip'


echo
echo "unzip Noto-hinted.zip -d Noto"
unzip Noto-hinted.zip -d Noto


echo
echo "sudo mv Noto /usr/local/share/fonts/"
sudo mv Noto /usr/local/share/fonts/


echo
echo "sudo chown root:staff /usr/local/share/fonts/Noto -R"
sudo chown root:staff /usr/local/share/fonts/Noto -R


echo
echo "sudo chmod 644 /usr/local/share/fonts/Noto/*"
sudo chmod 644 /usr/local/share/fonts/Noto/*


echo
echo "sudo chmod 755 /usr/local/share/fonts/Noto"
sudo chmod 755 /usr/local/share/fonts/Noto


echo
echo "ls /usr/local/share/fonts -l | grep Noto"
ls /usr/local/share/fonts -l | grep Noto


echo
echo "ls /usr/local/share/fonts/Noto"
ls /usr/local/share/fonts/Noto -l


echo
echo "sudo fc-cache -fv"
sudo fc-cache -fv


echo
echo "fc-match -a | grep Noto"
fc-match -a | grep Noto


echo
echo "fc-list | grep Noto"
fc-list | grep Noto


#fc-match -a | grep CJK
#fc-list | grep CJK

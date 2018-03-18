#!/usr/bin/env bash

## https://rg3.github.io/youtube-dl/download.html


echo
echo "mkdir -p $HOME/bin"
mkdir -p "$HOME/bin"

if [ -e "$HOME/bin/youtube-dl" ]; then
	echo
	echo "File_exist: $HOME/bin/youtube-dl"
	echo "Please remove it frist:"
	echo 'rm $HOME/bin/youtube-dl'
	echo 'or'
	echo 'mv $HOME/bin/youtube-dl $HOME/bin/youtube-dl.bak'
	echo
	exit 1
fi


echo
echo "wget -c \"https://yt-dl.org/downloads/latest/youtube-dl\" -O \"$HOME/bin/youtube-dl\""
wget -c "https://yt-dl.org/downloads/latest/youtube-dl" -O "$HOME/bin/youtube-dl"
chmod u+x "$HOME/bin/youtube-dl"


echo
echo "$HOME/bin/youtube-dl --update"
"$HOME/bin/youtube-dl" --update


echo
echo "$HOME/bin/youtube-dl --version"
"$HOME/bin/youtube-dl" --version
#youtube-dl --version

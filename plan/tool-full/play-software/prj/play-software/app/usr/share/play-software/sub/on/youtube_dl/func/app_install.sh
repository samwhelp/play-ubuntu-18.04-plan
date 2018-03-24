

### Head: main #################################################################
#
youtube_dl_app_install () {
	echo
	echo "### Head: youtube_dl_app_install #####################################################"
	echo "#"


	youtube_dl_app_install_create_dir
	youtube_dl_app_install_download_and_update

	echo "#"
	echo "### Tail: youtube_dl_app_install #####################################################"
	echo
}
#
### Tail: main #################################################################


### Head: youtube_dl #################################################################
#

youtube_dl_app_install_create_dir () {
	echo
	echo "mkdir -p $HOME/bin"
	mkdir -p "$HOME/bin"

	cd "$HOME/bin"

}

youtube_dl_app_install_download_and_update () {

	## https://rg3.github.io/youtube-dl/download.html

	if [ -e $HOME/bin/youtube-dl ]; then
		echo
		echo 'rm $HOME/bin/youtube-dl'
		rm "$HOME/bin/youtube-dl"
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


	echo
	echo "ln -sf youtube-dl yudl"
	ln -sf youtube-dl yudl

	echo
	echo "ln -sf youtube-dl ytdl"
	ln -sf youtube-dl ytdl

}

#
### Head: youtube_dl ################################################################

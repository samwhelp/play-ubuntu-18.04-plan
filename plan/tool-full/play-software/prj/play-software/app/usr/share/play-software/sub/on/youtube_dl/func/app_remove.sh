

### Head: main #################################################################
#
youtube_dl_app_remove () {
	echo
	echo "### Head: youtube_dl_app_remove ######################################################"
	echo "#"

	youtube_dl_app_remove_create_dir
	youtube_dl_app_remove_remove_bin

	echo "#"
	echo "### Tail: youtube_dl_app_remove ######################################################"
	echo
}
#
### Tail: main #################################################################


### Head: youtube_dl #################################################################
#
youtube_dl_app_remove_create_dir () {
	echo
	echo "mkdir -p $HOME/bin"
	mkdir -p "$HOME/bin"

	cd "$HOME/bin"

}

youtube_dl_app_remove_remove_bin () {

	if [ -L $HOME/bin/yudl ]; then
		echo
		echo 'rm $HOME/bin/yudl'
		rm "$HOME/bin/yudl"
	fi

	if [ -L $HOME/bin/ytdl ]; then
		echo
		echo 'rm $HOME/bin/ytdl'
		rm "$HOME/bin/ytdl"
	fi

	if [ -e $HOME/bin/youtube-dl ]; then
		echo
		echo 'rm $HOME/bin/youtube-dl'
		rm "$HOME/bin/youtube-dl"
	fi



}
#
### Tail: main #################################################################

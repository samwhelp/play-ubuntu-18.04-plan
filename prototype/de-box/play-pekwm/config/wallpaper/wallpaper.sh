#!/usr/bin/env bash

wallpaper_default () {
	#feh --bg-scale "/usr/share/backgrounds/Manhattan_Sunset_by_Giacomo_Ferroni.jpg"
	#feh --bg-scale "/usr/share/backgrounds/Spices_in_Athens_by_Makis_Chourdakis.jpg"
	feh --bg-scale "/usr/share/backgrounds/Frozen_sunset_on_the_lake_by_Manuel_Arslanyan.jpg"
	
}



wallpaper_main () {

	local load_last="$HOME/.fehbg"

	if [ -x "$HOME/.fehbg" ]; then
		##echo 1
		$load_last
		return
	fi

	##echo 2
	wallpaper_default 
}

wallpaper_main

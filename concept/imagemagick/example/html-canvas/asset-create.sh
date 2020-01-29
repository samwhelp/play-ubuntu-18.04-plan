#!/usr/bin/env bash

## Example: only one
#composite -geometry +0+275 car.png bg.png final.png


asset_create_all () {

	## create bg
	convert -size 800x600 canvas:none bg.png


	mkdir -p 'asset'

	local i
	local end=80
	local target_file_path
	local geometry
	local offset
	local step=10

	for i in $(seq 1 $end); do
		#echo $i;
		target_file_path=$(printf "asset/%03d" $i)".png"
		echo $target_file_path

		let "offset=${step} * ${i}"
		geometry="+${offset}+275"

		#echo "$offset"
		#echo "$geometry"

		composite -geometry "$geometry" car.png bg.png "$target_file_path"

	done
}

asset_create_all

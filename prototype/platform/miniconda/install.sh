#!/usr/bin/env bash


miniconda_donwload () {
	## https://conda.io/miniconda.html
	## https://conda.io/docs/user-guide/install/linux.html

	wget -c "https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh"
	chmod u+x "Miniconda3-latest-Linux-x86_64.sh"
}

miniconda_install () {
	#./Miniconda3-latest-Linux-x86_64.sh -b -p "$HOME/app/miniconda/main"
	./Miniconda3-latest-Linux-x86_64.sh -b -f -p "$HOME/app/miniconda/main"
}

miniconda_init_source_install () {
	mkdir -p "$HOME/app/miniconda"

	cp "./config/source.sh" "$HOME/app/miniconda/source.sh"
}

miniconda_install_main () {
	miniconda_donwload
	miniconda_install
	miniconda_init_source_install
}

miniconda_install_main

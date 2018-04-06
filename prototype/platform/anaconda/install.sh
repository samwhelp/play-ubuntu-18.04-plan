#!/usr/bin/env bash


anaconda_donwload () {
	## https://www.anaconda.com/download/#linux
	## https://docs.anaconda.com/anaconda/install/linux

	wget -c "https://repo.continuum.io/archive/Anaconda3-5.1.0-Linux-x86_64.sh"
	chmod u+x "Anaconda3-5.1.0-Linux-x86_64.sh"
}

anaconda_install () {
	#./Anaconda3-5.1.0-Linux-x86_64.sh -b -p "$HOME/app/anaconda/main"
	./Anaconda3-5.1.0-Linux-x86_64.sh -b -f -p "$HOME/app/anaconda/main"
}

anaconda_init_source_install () {
	mkdir -p "$HOME/app/anaconda"

	cp "./config/source.sh" "$HOME/app/anaconda/source.sh"
}

anaconda_install_main () {
	anaconda_donwload
	anaconda_install
	anaconda_init_source_install
}

anaconda_install_main

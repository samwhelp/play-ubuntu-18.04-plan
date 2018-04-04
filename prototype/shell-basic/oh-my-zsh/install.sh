#!/usr/bin/env bash

zsh_apt_install () {
	sudo apt-get install zsh
	#sudo apt-get install zsh zsh-doc
}

oh_my_zsh_clone_repo () {
	if [ -d "$HOME/.oh-my-zsh" ]; then
		return
	fi

	## https://github.com/robbyrussell/oh-my-zsh

	## clone
	echo
	echo "git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh"
	git clone "https://github.com/robbyrussell/oh-my-zsh.git" "$HOME/.oh-my-zsh"
}


oh_my_zsh_conf_profile () {

	echo
	echo "cp $HOME/.oh-my-zsh/templates/zshrc.zsh-template $HOME/.zshrc"
	cp "$HOME/.oh-my-zsh/templates/zshrc.zsh-template" "$HOME/.zshrc"

	sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="candy-fix"/g' "$HOME/.zshrc"


}

oh_my_zsh_conf_theme () {

	echo
	echo "mkdir -p $HOME/.oh-my-zsh/custom/themes"
	mkdir -p "$HOME/.oh-my-zsh/custom/themes"


	echo
	echo "cp ./config/candy-fix.zsh-theme $HOME/.oh-my-zsh/custom/themes/candy-fix.zsh-theme"
	cp "./config/candy-fix.zsh-theme" "$HOME/.oh-my-zsh/custom/themes/candy-fix.zsh-theme"

}

oh_my_zsh_install_main () {
	zsh_apt_install
	oh_my_zsh_clone_repo
	oh_my_zsh_conf_profile
	oh_my_zsh_conf_theme
}

oh_my_zsh_install_main

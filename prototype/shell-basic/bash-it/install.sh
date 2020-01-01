#!/usr/bin/env bash


bash_it_clone_repo () {
	if [ -d "$HOME/.bash_it" ]; then
		return
	fi

	## https://github.com/Bash-it/bash-it

	## clone
	echo
	echo "git clone --depth=1 https://github.com/Bash-it/bash-it.git $HOME/.bash_it"
	git clone --depth=1 "https://github.com/Bash-it/bash-it.git" "$HOME/.bash_it"
}


bash_it_conf_profile_from_template () {

	echo
	echo "cp $HOME/.bash_it/template/bash_profile.template.bash $HOME/.bash_it_profile"
	cp "$HOME/.bash_it/template/bash_profile.template.bash" "$HOME/.bash_it_profile"

	sed -i "s|{{BASH_IT}}|\$HOME/.bash_it|g" "$HOME/.bash_it_profile"

	sed -i "s/export BASH_IT_THEME='bobby'/# export BASH_IT_THEME='bobby'/g" "$HOME/.bash_it_profile"

	sed -i "s|export GIT_HOSTING='git@git.domain.com'|# export GIT_HOSTING='git@git.domain.com'|g" "$HOME/.bash_it_profile"
}

bash_it_conf_profile () {

	echo
	echo "cp ./config/bash_it_profile.bash $HOME/.bash_it_profile"
	cp "./config/bash_it_profile.bash" "$HOME/.bash_it_profile"

}

bash_it_conf_theme_custom () {

	echo
	echo "mkdir -p $HOME/.bash_it/custom"
	mkdir -p "$HOME/.bash_it/custom"


	echo
	echo "cp ./config/nwinkler-fix.theme.bash $HOME/.bash_it/custom/nwinkler-fix.theme.bash"
	cp "./config/nwinkler-fix.theme.bash" "$HOME/.bash_it/custom/nwinkler-fix.theme.bash"

}

bash_it_conf_theme () {

	echo
	echo "mkdir -p $HOME/.bash_it/themes/nwinkler-fix"
	mkdir -p "$HOME/.bash_it/themes/nwinkler-fix"

	echo
	echo "cp ./config/themes/nwinkler-fix/nwinkler-fix.theme.bash $HOME/.bash_it/themes/nwinkler-fix/nwinkler-fix.theme.bash"
	cp "./config/themes/nwinkler-fix/nwinkler-fix.theme.bash" "$HOME/.bash_it/themes/nwinkler-fix/nwinkler-fix.theme.bash"

}


is_exist_bashitrc () {
	grep '### Head: bash-it' "$HOME/.bashrc" -q
}

bash_it_conf_bashrc () {
	if is_exist_bashitrc; then
		return
	fi

	echo
	echo "cat ./config/bashrc.part.bash >> $HOME/.bashrc"
	cat "./config/bashrc.part.bash" >> "$HOME/.bashrc"

	## recover
	## cp "/etc/skel/.bashrc" "$HOME/.bashrc"
}


bash_it_install_main () {
	bash_it_clone_repo
	bash_it_conf_profile
	bash_it_conf_theme
	bash_it_conf_bashrc
}

bash_it_install_main

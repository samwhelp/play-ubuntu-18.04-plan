#!/usr/bin/env bash


## init
THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source "$THE_BASE_DIR_PATH/_init.sh"


## main

main_deb_build () {
	## prepare dir
	base_dir_prepare


	## cd ../prj
	#cd $THE_PRJ_DIR_PATH
	##pwd

	## now in dir [prj]

	## man dpkg-source
	#dpkg-source -b $THE_MAIN_DIR_NAME




	## cd ../prj/demo
	cd "$THE_MAIN_DIR_PATH"
	##pwd

	## now in dir [prj/demo]


	## man dpkg-buildpackage
	## to build only the binary package(s)
	#dpkg-buildpackage -i -us -uc -b

	## to build binary package(s) and source package
	#dpkg-buildpackage -i -us -uc




	## man dpkg-buildpackage
	## man debuild
	## to build only the binary package(s)
	#debuild -i -us -uc -b

	## for E: demo changes: bad-distribution-in-changes-file unstable
	## demo (0.1.0) artful; urgency=low
	#debuild -i -us -uc -b --lintian-opts --profile ubuntu

	## to build binary package(s) and source package
	debuild -i -us -uc

	if [ "$?" != "0" ]; then
		echo 'Build Error!'
		exit 1
	fi

	mv ../"$THE_DEB_PKG_NAME"_* $THE_DEB_DIR_PATH

}

main_deb_build "$@"

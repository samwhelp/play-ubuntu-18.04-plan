

default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Ex:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make meson-build'
	@echo
	@echo '	$$ make build'
	@echo
	@echo '	$$ make install'
	@echo
	@echo '	$$ make keybind'
	@echo
	@echo '	$$ make remove'
	@echo
	@echo '	$$ make clean'
	@echo
.PHONY: help


prepare: build-essential prepare-keybind-tool
.PHONY: prepare


build-essential:
	sudo apt-get install build-essential libgtk-3-dev libwnck-3-dev meson
.PHONY: build-essential


prepare-keybind-tool:
	sudo apt-get install sxhkd
.PHONY: prepare-keybind-tool


meson-build:
	meson build
.PHONY: meson-build


build:
	ninja -C build
.PHONY: build


install:
	mkdir -p ~/bin/
	install -m 755 build/toggle-show-desktop ~/bin/toggle-show-desktop
.PHONY: install


remove:
	rm -f ~/bin/toggle-show-desktop
.PHONY: instal

clean:
	rm -rf build
.PHONY: clean


keybind:
	sxhkd -c keybind.conf
.PHONY: keybind

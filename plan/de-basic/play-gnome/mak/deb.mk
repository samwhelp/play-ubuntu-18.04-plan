
prepare:
	@prepare.sh
.PHONY: prepare

deb-build:
	@deb-build.sh
.PHONY: deb-build

deb-clean:
	@deb-clean.sh
.PHONY: deb-clean


deb-install:
	@deb-install.sh
.PHONY: deb-install

deb-remove:
	@deb-remove.sh
.PHONY: deb-remove

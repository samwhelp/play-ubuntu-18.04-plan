default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make install'
	@echo

.PHONY: help

install:
	install -m 755 bin/xephyr-run-awesome.sh ~/bin/xephyr-run-awesome.sh
	install -m 755 bin/xephyr-run-awesome-rc.sh ~/bin/xephyr-run-awesome-rc.sh
.PHONY: install

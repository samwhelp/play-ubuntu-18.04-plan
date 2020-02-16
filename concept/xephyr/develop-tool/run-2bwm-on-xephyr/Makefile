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
	install -m 755 bin/xephyr-run-2bwm.sh ~/bin/xephyr-run-2bwm.sh
	install -m 755 bin/xephyr-run-2bwm-session.sh ~/bin/xephyr-run-2bwm-session.sh
	install -m 755 bin/2bwm-session.sh ~/bin/2bwm-session.sh
.PHONY: install

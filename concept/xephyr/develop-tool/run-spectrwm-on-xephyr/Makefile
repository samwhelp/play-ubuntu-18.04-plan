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
	install -m 755 bin/xephyr-run-spectrwm.sh ~/bin/xephyr-run-spectrwm.sh
	install -m 755 bin/xephyr-run-spectrwm-session.sh ~/bin/xephyr-run-spectrwm-session.sh
.PHONY: install

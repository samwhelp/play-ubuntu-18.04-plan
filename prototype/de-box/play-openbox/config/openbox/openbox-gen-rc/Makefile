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
	@echo '	$$ make prepare'
	@echo
	@echo '	$$ make rc'
	@echo
	@echo '	$$ make view'
	@echo
	@echo '	$$ make install'
	@echo
	@echo '	$$ make test'
	@echo
	@echo '	$$ make sync'
	@echo

.PHONY: help


prepare:
	sudo apt-get install php-cli
.PHONY: prepare


rc:
	php rc.php > rc.xml
.PHONY: rc


view:
	cat rc.xml
.PHONY: view


install: rc
	install -m 664 rc.xml ~/.config/openbox/rc.xml
.PHONY: install


test:
	openbox-run.sh
.PHONY: test


sync: rc
	install -m 664 rc.xml ../rc.xml
	install -m 664 rc.xml ../../../../../de-lxqt-with-wm/lxqt-with-openbox/config/openbox/lxqt-rc.xml
	sed -i 's/<bottom>48<\/bottom>/<bottom>5<\/bottom>/g' ../../../../../de-lxqt-with-wm/lxqt-with-openbox/config/openbox/lxqt-rc.xml
	sed -i 's/<top>5<\/top>/<top>36<\/top>/g' ../../../../../de-lxqt-with-wm/lxqt-with-openbox/config/openbox/lxqt-rc.xml
.PHONY: sync


# demo:
# 	@./demo.sh
# .PHONY: demo

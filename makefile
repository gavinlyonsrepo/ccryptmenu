
PREFIX ?= /usr

all:
	@echo Run \'make install\' to install ccryptmenu.

install:
	@echo 'Making directories...'
	@mkdir -vp $(PREFIX)/bin
	@mkdir -vp $(PREFIX)/share/doc/ccryptmenu
	
	@echo 'Installing script...'
	@cp -vp main/ccryptmenu $(PREFIX)/bin
	@chmod 755 $(PREFIX)/bin/ccryptmenu
	
	@echo 'Installing Readme...'
	@cp -vp README.md  $(PREFIX)/share/doc/ccryptmenu
	
	@echo 'Installing Desktop entry...'
	@cp -vp	desktop/ccryptmenu.desktop $(PREFIX)/share/applications
	@cp -vp	desktop/ccryptmenuicon.png $(PREFIX)/share/pixmaps

	@echo 'DONE!'



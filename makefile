# Makefile to install ccryptmenu  program, 05-05-2022
# URL :: https://github.com/gavinlyonsrepo/ccryptmenu
# Gavin Lyons
# Options:
# 1. sudo make install
# 2. sudo make uninstall

PREFIX ?= /usr
PKGNAME = ccryptmenu

all:
	@echo Run \'make install\' to install $(PKGNAME).
	@echo 'or'
	@echo Run \'make uninstall\' to uninstall $(PKGNAME).
	
install:
	@echo 'START!'
	@echo 'Installing $(PKGNAME) ....' 
	@echo 'Making directories...'
	@mkdir -vp $(PREFIX)/bin
	@mkdir -vp $(PREFIX)/share/doc/$(PKGNAME)
	
	@echo 'Installing Script ...'
	@cp -vp main/$(PKGNAME) $(PREFIX)/bin
	@chmod 755 $(PREFIX)/bin/$(PKGNAME)
	
	@echo 'Installing Documentation ...'
	@cp -vp README.md  $(PREFIX)/share/doc/$(PKGNAME)
	@cp -vp documentation/manpage/ccryptmenu.7.gz  $(PREFIX)/share/man/man7/
	
	@echo 'Installing Desktop entry ...'
	@cp -vp	desktop/$(PKGNAME).desktop $(PREFIX)/share/applications
	@cp -vp	desktop/$(PKGNAME)icon.png $(PREFIX)/share/pixmaps

	@echo 'DONE!'

uninstall:
	@echo 'START!'
	@echo 'Uninstalling $(PKGNAME) ...'
	
	@echo 'Removing Script ...'
	rm -vf $(PREFIX)/bin/$(PKGNAME)
	
	@echo 'Removing Documentation ...'
	rm -vf $(PREFIX)/share/doc/$(PKGNAME)/README.md
	rm -vf $(PREFIX)/share/man/man7/ccryptmenu.7.gz 
	
	@echo 'Removing Desktop entry ...'
	rm -vf $(PREFIX)/share/applications/$(PKGNAME).desktop
	rm -vf $(PREFIX)/share/pixmaps/$(PKGNAME)icon.png
	
	@echo 'DONE!'


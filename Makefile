# project Makefile.

INSTALL_DIR       = "$(HOME)/bin/" 

#####################################################################


all: build

check_version:
	@./check_version.sh

build:
	@cd src ; $(MAKE)
	@echo "% "
	@echo "% You can check the web if this is the latest public version"
	@echo "% issuing the command \"make check_version\". have fun!"
	@echo "%"


install:
	cp src/rtpbreak $(INSTALL_DIR)
	@echo "%"
	@echo "% Now rtpbreak is properly installed, ready to sniff packets!"
	@echo "%"

clean:
	cd src ; $(MAKE) clean

#eof

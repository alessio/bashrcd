#!/usr/bin/make -f

PREFIX ?= /usr/local

all: install

install: bashrcd
	install -m 755 -t $(DESTDIR)$(PREFIX)/bin/ $?

clean:
	rm -f *~

test:
	/bin/bash tests/test_*.sh
	@echo
	/usr/bin/shellcheck bashrcd

.PHONY: install clean test

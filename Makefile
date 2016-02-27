#!/usr/bin/make -f

PREFIX ?= /usr/local

all: install

install: bashrcd
	install -m 755 -t $(DESTDIR)$(PREFIX)/bin/ $?

clean:
	rm -f *~

test:
	@/bin/bash tests/test_envvars.sh
	@/bin/bash tests/test_override_bashrcd.sh
	@echo
	/usr/bin/shellcheck bashrcd

.PHONY: install clean test

#!/usr/bin/make -f

PREFIX ?= /usr/local
SHELLCHECK := $(which shellcheck)

all: install

install: bashrcd
	install -m 755 -t $(DESTDIR)$(PREFIX)/bin/ $?

clean:
	rm -f *~

test:
	/bin/bash tests/test_envvars.sh
	@echo
	/bin/bash tests/test_override_bashrcd.sh
	@echo
	$(SHELLCHECK) bashrcd

.PHONY: install clean test

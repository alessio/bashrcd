#!/usr/bin/make -f

PREFIX ?= /usr/local

all: install

install: bashrcd
	install -m 755 -t $(DESTDIR)$(PREFIX)/bin/ $?

clean:
	rm -f *~

.PHONY: install clean

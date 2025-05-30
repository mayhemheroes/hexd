CFLAGS += -Wall -std=c11

PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin
MANDIR ?= $(PREFIX)/share/man

.PHONY: all
all: hexd

.PHONY: clean
clean:
	rm -f hexd

.PHONY: install
install: hexd
	mkdir -p $(DESTDIR)$(BINDIR) $(DESTDIR)$(MANDIR)/man1
	install hexd $(DESTDIR)$(BINDIR)/hexd
	install hexd.1 $(DESTDIR)$(MANDIR)/man1/hexd.1

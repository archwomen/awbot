
PREFIX    ?= /usr/local
MANPREFIX ?= $(PREFIX)/share/man

awbot.1: README.pod
	pod2man --section=1 --center="awbot manual" --name="AWBOT" --release="awbot" $^ $@

install: awbot awbot.1
	install -D -m755 awbot $(DESTDIR)$(PREFIX)/bin/awbot
	install -D -m644 awbot.1 $(DESTDIR)$(MANPREFIX)/man1/awbot.1

uninstall:
	$(RM) $(DESTDIR)$(PREFIX)/bin/awbot $(DESTDIR)$(MANPREFIX)/man1/awbot.1


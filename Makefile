BINDIR ?= /usr/bin
LIBDIR ?= /usr/lib/oil

.PHONY: install uninstall

install:
	install -Dm755 src/oil $(DESTDIR)$(BINDIR)/oil
	install -Dm755 src/json-to-line.jq $(DESTDIR)$(LIBDIR)/json-to-line.jq
	install -Dm755 src/format-columns.awk $(DESTDIR)$(LIBDIR)/format-columns.awk
	install -Dm755 src/bookmarkFromClipboard.sh $(DESTDIR)$(LIBDIR)/bookmarkFromClipboard.sh

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/oil
	rm -f $(DESTDIR)$(LIBDIR)/json-to-line.jq
	rm -f $(DESTDIR)$(LIBDIR)/format-columns.awk
	rm -f $(DESTDIR)$(LIBDIR)/bookmarkFromClipboard.sh
ifeq ($(ZXNEXT),1)
TARGETS=client server
else
TARGETS=client
endif

PREFIX=$(CURDIR)

all : $(TARGETS)
	for tgt in $(TARGETS); do make -C $$tgt all; done

.PHONY : $(TARGETS) clean distclean install install_client install_server

clean : $(TARGETS)
	for tgt in $(TARGETS); do make -C $$tgt clean; done

distclean : $(TARGETS)
	for tgt in $(TARGETS); do make -C $$tgt distclean; done

install : install_client install_server

install_client : client
	mkdir -p $(PREFIX)/bin
	make -C client install

install_server : server
	$(PREFIX)/zxnext/dot
	make -C server install

include config.mk

BIN =\
		 text2pdf

SRC = $(BIN:=.c)
OBJ = $(BIN:=.o)
MAN = $(BIN:=.1)

all: $(BIN)

$(BIN): $(LIB) $(OBJ)

.o:
	$(CC) $(LDFLAGS) -o $@ $< $(LIB)

.c.o:
	$(CC) $(CFLAGS) $(CPPFLAGS) -o $@ -c $<


install: all
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f $(BIN) $(DESTDIR)$(PREFIX)/bin
	cd $(DESTDIR)$(PREFIX)/bin && chmod 755 $(BIN)
	mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	for m in $(MAN); do sed "s/{{VERSION}}/$(VERSION)/g" < "$$m" > $(DESTDIR)$(MANPREFIX)/man1/"$$m"; done
	cd $(DESTDIR)$(MANPREFIX)/man1 && chmod 644 $(MAN)

uninstall:
	for b in $(BIN); do rm -f $(DESTDIR)$(PREFIX)/bin/"$$b"; done
	for m in $(MAN); do rm -f $(DESTDIR)$(MANPREFIX)/man1/"$$m"; done

clean:
	rm $(BIN)
	rm $(OBJ)

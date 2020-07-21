include config.mk

SRC  = $(wildcard src/*.c)
SRC += $(LIBSRC)
OBJ  = $(SRC:.c=.o)
MAN  = $(NAME:=.1)

default: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(INCLUDES) $(CFLAGS) $(CPPFLAGS) -o $@ $^

.o:
	$(CC) $(LDFLAGS) -o $@ $< $(LIB)

.c.o:
	$(CC) $(INCLUDES) $(CFLAGS) -o $@ -c $<


install: default
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f $(NAME) $(DESTDIR)$(PREFIX)/bin
	cd $(DESTDIR)$(PREFIX)/bin && chmod 755 $(NAME)
	mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	for m in $(MAN); do sed "s/{{VERSION}}/$(VERSION)/g" < "$$m" > $(DESTDIR)$(MANPREFIX)/man1/"$$m"; done
	cd $(DESTDIR)$(MANPREFIX)/man1 && chmod 644 $(MAN)

uninstall:
	for b in $(NAME); do rm -f $(DESTDIR)$(PREFIX)/bin/"$$b"; done
	for m in $(MAN); do rm -f $(DESTDIR)$(MANPREFIX)/man1/"$$m"; done

clean:
	rm -f $(NAME)
	rm -f $(OBJ)

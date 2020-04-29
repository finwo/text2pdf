VERSION = 1.1

PREFIX    = /usr/local
MANPREFIX = $(PREFIX)/share/man

CC = cc
AR = ar

CFLAGS  = -std=c89 -Wall -O3
LDFLAGS = -s -O3

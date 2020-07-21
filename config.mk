VERSION = 1.1
NAME = text2pdf

PREFIX    = /usr/local
MANPREFIX = $(PREFIX)/share/man

CC = cc
AR = ar

CFLAGS  = -std=c99 -Wall -O3
LDFLAGS = -s -O3

INCLUDES = -Ilib/argparse
LIBSRC?=
LIBSRC+=lib/argparse/argparse.c

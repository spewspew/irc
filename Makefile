BIN = irc

CFLAGS = -std=c99 -Os -D_POSIX_C_SOURCE=201112 -D_GNU_SOURCE -D_XOPEN_CURSES -D_XOPEN_SOURCE_EXTENDED=1 -D_BSD_SOURCE
LDFLAGS = -lncursesw

all: ${BIN}

install: ${BIN}
	cp ${BIN} ${HOME}/bin

clean:
	rm -f ${BIN} *.o

.PHONY: all clean

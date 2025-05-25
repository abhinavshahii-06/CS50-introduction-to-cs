CC = clang
CFLAGS = -std=c11 -ggdb -Wall -Werror -Wextra
LDFLAGS = -L/usr/local/lib -lcs50 -Wl,-rpath,/usr/local/lib
INCLUDES = -I/usr/local/include

SRC = $(wildcard *.c)
EXE = $(SRC:.c=)

all: $(EXE)

%: %.c
	$(CC) $(CFLAGS) $(INCLUDES) $< -o $@ $(LDFLAGS)

clean:
	rm -f $(EXE)

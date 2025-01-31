CC = gcc
FLAGS = -Wall -O
SOURCES = sl.c
HEADS = sl.h
PROGRAM = sl
LINKS = -lncurses

all: $(PROGRAM)

$(PROGRAM): $(SOURCES) $(HEADS)
	$(CC) $(FLAGS) -o $(PROGRAM) $(SOURCES) $(LINKS)

run: $(PROGRAM)
	./$(PROGRAM) -e

clean:
	rm -f sl

distclean: clean

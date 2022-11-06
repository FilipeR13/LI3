CC = gcc #compiler of c programs
CFlags = `pkg-config --cflags --libs glib-2.0`

parce.o: parse.c
	@${CC} parse.c $(CFlags)

objects = parce.o

all: $(objects)

clean:
	rm *.o all
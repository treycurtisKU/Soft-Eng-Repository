CC = gcc
CFLAGS = -Wall

program: main.o isOdd.o isEven.o
	$(CC) main.o isOdd.o isEven.o -o program

main.o: main.c isOdd.h isEven.h
	$(CC) $(CFLAGS) -c main.c

isOdd.o: isOdd.c isOdd.h
	$(CC) $(CFLAGS) -c isOdd.c

isEven.o: isEven.c isEven.h
	$(CC) $(CFLAGS) -c isEven.c

clean:
	rm -f *.o program

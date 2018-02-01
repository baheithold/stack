OBJS = integer.o stack.o dll.o test-stack.o
OOPTS = -Wall -Wextra -g -c
LOPTS = -Wall -Wextra -g

all : test-stack

test-stack: $(OBJS)
	gcc $(LOPTS) $(OBJS) -o test-stack

integer.o: integer.c integer.h
	gcc $(OOPTS) integer.c

dll.o: dll.c dll.h
	gcc $(OOPTS) dll.c

test-stack.o:	test-stack.c stack.h
	gcc $(OOPTS) test-stack.c

test: test-stack
	./test-stack

valgrind: test-stack
	valgrind test-stack

clean:
	rm -f *.o vgcore.* test-stack

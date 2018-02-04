OBJS0 = stack-0-0.o integer.o stack.o dll.o
OBJS1 = stack-0-1.o real.o stack.o dll.o
OBJS2 = stack-0-2.o string.o stack.o dll.o
OBJS3 = stack-0-3.o integer.o stack.o dll.o
OBJS4 = stack-0-4.o integer.o stack.o dll.o
OBJS5 = stack-0-5.o integer.o stack.o dll.o
OBJS6 = stack-0-6.o stack.o dll.o
OBJS7 = stack-0-7.o integer.o stack.o dll.o
OBJS8 = stack-0-8.o integer.o stack.o dll.o
OBJS9 = stack-0-9.o integer.o stack.o dll.o
OOPTS = -Wall -Wextra -std=c99 -g -c
LOPTS = -Wall -Wextra -std=c99 -g

all:	stack-0-0 stack-0-1 stack-0-2 stack-0-3 stack-0-4 stack-0-5 stack-0-6 \
		stack-0-7 stack-0-8 stack-0-9

stack-0-0:	$(OBJS0)
	gcc $(LOPTS) $(OBJS0) -o stack-0-0

stack-0-1:	$(OBJS1)
	gcc $(LOPTS) $(OBJS1) -o stack-0-1

stack-0-2:	$(OBJS2)
	gcc $(LOPTS) $(OBJS2) -o stack-0-2

stack-0-3:	$(OBJS3)
	gcc $(LOPTS) $(OBJS3) -o stack-0-3

stack-0-4:	$(OBJS4)
	gcc $(LOPTS) $(OBJS4) -o stack-0-4

stack-0-5:	$(OBJS5)
	gcc $(LOPTS) $(OBJS5) -o stack-0-5

stack-0-6:	$(OBJS6)
	gcc $(LOPTS) $(OBJS6) -o stack-0-6

stack-0-7:	$(OBJS7)
	gcc $(LOPTS) $(OBJS7) -o stack-0-7

stack-0-8:	$(OBJS8)
	gcc $(LOPTS) $(OBJS8) -o stack-0-8

stack-0-9:	$(OBJS9)
	gcc $(LOPTS) $(OBJS9) -o stack-0-9

dll.o:	dll.c dll.h
	gcc $(OOPTS) dll.c

stack.o:	stack.c stack.h dll.h
	gcc $(OOPTS) stack.c

stack-0-0.o:	./testing/stack-0-0.c stack.h dll.h integer.h
	gcc $(OOPTS) ./testing/stack-0-0.c

stack-0-1.o:	./testing/stack-0-1.c stack.h dll.h real.h
	gcc $(OOPTS) ./testing/stack-0-1.c

stack-0-2.o:	./testing/stack-0-2.c stack.h dll.h string.h
	gcc $(OOPTS) ./testing/stack-0-2.c

stack-0-3.o:	./testing/stack-0-3.c stack.h dll.h integer.h
	gcc $(OOPTS) ./testing/stack-0-3.c

stack-0-4.o:	./testing/stack-0-4.c stack.h dll.h integer.h
	gcc $(OOPTS) ./testing/stack-0-4.c

stack-0-5.o:	./testing/stack-0-5.c stack.h dll.h integer.h
	gcc $(OOPTS) ./testing/stack-0-5.c

stack-0-6.o:	./testing/stack-0-6.c stack.h dll.h
	gcc $(OOPTS) ./testing/stack-0-6.c

stack-0-7.o:	./testing/stack-0-7.c stack.h dll.h integer.h
	gcc $(OOPTS) ./testing/stack-0-7.c

stack-0-8.o:	./testing/stack-0-8.c stack.h dll.h integer.h
	gcc $(OOPTS) ./testing/stack-0-8.c

stack-0-9.o:	./testing/stack-0-9.c stack.h dll.h integer.h
	gcc $(OOPTS) ./testing/stack-0-9.c

integer.o:	integer.c integer.h
	gcc $(OOPTS) integer.c

real.o:	real.c real.h
	gcc $(OOPTS) real.c

string.o:	string.c string.h
	gcc $(OOPTS) string.c

test:	all
	@echo Testing Stack
	@echo Running stack-0-0 tester...
	@./stack-0-0 > ./testing/myResults/results-0-0
	@diff ./testing/expectedResults/results-0-0 ./testing/myResults/results-0-0
	@echo
	@echo Running stack-0-1 tester...
	@./stack-0-1 > ./testing/myResults/results-0-1
	@diff ./testing/expectedResults/results-0-1 ./testing/myResults/results-0-1
	@echo
	@echo Running stack-0-2 tester...
	@./stack-0-2 > ./testing/myResults/results-0-2
	@diff ./testing/expectedResults/results-0-2 ./testing/myResults/results-0-2
	@echo
	@echo Running stack-0-3 tester...
	@./stack-0-3 > ./testing/myResults/results-0-3
	@diff ./testing/expectedResults/results-0-3 ./testing/myResults/results-0-3
	@echo
	@echo Running stack-0-4 tester...
	@./stack-0-4 > ./testing/myResults/results-0-4
	@diff ./testing/expectedResults/results-0-4 ./testing/myResults/results-0-4
	@echo
	@echo Running stack-0-5 tester...
	@./stack-0-5 > ./testing/myResults/results-0-5
	@diff ./testing/expectedResults/results-0-5 ./testing/myResults/results-0-5
	@echo
	@echo Running stack-0-6 tester...
	@./stack-0-6 > ./testing/myResults/results-0-6
	@diff ./testing/expectedResults/results-0-6 ./testing/myResults/results-0-6
	@echo
	@echo Running stack-0-7 tester...
	@./stack-0-7 > ./testing/myResults/results-0-7
	@diff ./testing/expectedResults/results-0-7 ./testing/myResults/results-0-7
	@echo
	@echo Running stack-0-8 tester...
	@./stack-0-8 > ./testing/myResults/results-0-8
	@diff ./testing/expectedResults/results-0-8 ./testing/myResults/results-0-8
	@echo
	@echo Running stack-0-9 tester...
	@./stack-0-9 > ./testing/myResults/results-0-9
	@diff ./testing/expectedResults/results-0-9 ./testing/myResults/results-0-9
	@echo

valgrind:	all 
	valgrind stack-0-0
	valgrind stack-0-1
	valgrind stack-0-2
	valgrind stack-0-3
	valgrind stack-0-4
	valgrind stack-0-5
	valgrind stack-0-6
	valgrind stack-0-7
	valgrind stack-0-8
	valgrind stack-0-9

clean:
	rm -f *.o vgcore.* test-stack stack-0-0 stack-0-1 stack-0-2 stack-0-3 \
	stack-0-4 stack-0-5 stack-0-6 stack-0-7 stack-0-8 stack-0-9

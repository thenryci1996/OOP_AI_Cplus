// makefile

OBJS = State.o List.o StateTest.o ListTest.o
CC = g++
CFLAGS = -Wall -c
LFLAGS = -Wall 



State.o: State.h
	$(CC) $(CFLAGS) State.cpp

StateTest.o: StateTest.cpp State.cpp State.h
	$(CC) $(CFLAGS) StateTest.cpp
List.o: List.cpp  List.h State.cpp State.h
	$(CC) $(CFLAGS) List.cpp
ListTest.o: ListTest.cpp List.cpp State.cpp State.h
	$(CC) $(CFLAGS) ListTest.cpp
	
StateTest:
	$(CC) $(LFLAGS) State.o StateTest.o -o StateTest
ListTest:
	$(CC) $(LFLAGS) State.o List.o ListTest.o -o ListTest
	
clean:
	rm *.o
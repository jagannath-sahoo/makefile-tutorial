#########################################
#Define Directives
CC= gcc
CFLAGS= -c -Wall
OBJ= main
#########################################

#########################################
#To use use Directives
#########################################
all:$(OBJ)

$(OBJ): fun1.o fun2.o fun3.o main.o
	$(CC) fun1.o fun2.o fun3.o main.o -o $(OBJ)
##########################################
# Split into multiple sections
##########################################
fun1.o: fun1.c
	$(CC) $(CFLAGS) fun1.c

fun2.o: fun2.c
	$(CC) $(CFLAGS) fun2.c

fun3.o: fun3.c
	$(CC) $(CFLAGS) fun3.c

main.o: main.c
	$(CC) $(CFLAGS) main.c

clean:
	rm -f *.o
	rm -f main
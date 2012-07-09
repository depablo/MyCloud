#Make file written by boby Thomas Pazheparampil
#21-5-2006
INCLUDES = -I ./include
 
CC = g++ -g -Wno-deprecated
CFLAGS = -c $(INCLUDES)

all : mycloud
 
mycloud : mycloud.o
	$(CC) mycloud.o -o mycloud 
mycloud.o : mycloud.cpp
	$(CC) $(CFLAGS) mycloud.cpp 
 
clean :
	rm -f *.o
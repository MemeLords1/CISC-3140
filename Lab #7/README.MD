# README
For this Lab I decide to use the MakeFile to Print and create a message called "Hello World"

---

## Common Commands

`make` should be typed in the command line to run the Makefile and to exucute the Hello World. 

`make clean` make clean deletes all the file that was created by the Makefile and the HelloWorldMake file. The HelloWorldMake File is the Hello World File that you exucute or run to Print Hello World on the command line.

## How the Hello World/Makefile works.

# First Line
The First line is out: main.o message.o.
This compares  main.o and message.o to see if any changes were made.
If there are any changes in any one of these .o files they we exucute the g++ main.o message.o -o HelloWorldMake
If any changes were made to the .o file we will recompile main.o and message.o together into a new file called HelloWorldMake

# Second Line
main.o: main.cpp
  g++ -c main.cpp
This create a main.o file from main.cpp file whenever main.cpp have any changes.

# Third Line
message.o: message.cpp message.h
  g++ -c message.cpp
this create a message.o file whenever message.cpp or message.h file get modify.
It will only compile a message.o file from message.cpp but would run whenever either message.cpp or message.h get modify.

# Fourth Line
clean:
  rm *.o HelloWorldMake

This Remove all file that ends with .o and HelloWorldMake file itself. This is to clean/delete all the file that was created by Makefile.

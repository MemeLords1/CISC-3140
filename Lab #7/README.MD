# README
For this Lab I decide to use the MakeFile to Print and create a message called "Hello World"

I wanted to do something slightly more then just simply print Hello World. So I made a MakeFile that prints Hello World while combining and using 3 separate files instead of just simply using one file for Hello World.


## Common Commands

You will need main.cpp,message.cpp,message.h files for this Makefile to work. Which could be found in the code called NeededCode.txt

`make` should be typed in the command line to run the Makefile. This would create HelloWorldMake output file which you could run to print Hello World on the command Line.

`make clean` deletes all the file that was created by the Makefile and the HelloWorldMake file. The HelloWorldMake File is the Hello World File that you execute or run to Print Hello World on the command line.

# How the Hello World/Makefile works.

## First Line
        out: main.o message.o 
                g++ main.o message.o -o HelloWorldMake
        
This compares main.o and message.o to see if any changes were made.

If there are any changes in any one of these .o files it will execute the g++ main.o message.o -o HelloWorldMake

This will recompile main.o and message.o together again into the file called HelloWorldMake

## Second Line
        main.o: main.cpp 
                g++ -c main.cpp
  
This create a main.o file from main.cpp file whenever main.cpp have any changes.

## Third Line
        message.o: message.cpp message.h 
                g++ -c message.cpp
                
This create a message.o file whenever message.cpp or message.h file get modify.

It will only compile a message.o file from message.cpp but would run whenever either message.cpp or message.h get modify.

## Fourth Line
        clean: 
                rm *.o HelloWorldMake

This Remove all file that ends with .o and HelloWorldMake file itself. This is to clean/delete all the file that was created by Makefile.

---

# Notes
Lab 7 Terminal.txt shows me running the Makefile, Shows the output, and show that the clean command works.

Lab 7 MakeFile.txt shows the Makefile code.


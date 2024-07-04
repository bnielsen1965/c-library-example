# gcc library example

This is a simple hello world demo that builds the same application with a 
linked library using BASH scripts, the make utility with a Makefile, and 
using CMake.

In all cases the primary objective is to execute compiler commands with 
the appropriate options to enable including header files, compiling 
source files, and linking binaries into a final executable.

The make and cmake tools assist in automating some of the steps in this 
process while the BASH script option manually assembles the compiler 
commands and options.


## no-make

The no-make folder includes the source files for the application and 
the library with some BASH scripts that are used to asemble the gcc and 
ar commands needed to build the library, the application and to link 
the two together.


## makefile

The makefile folder includes the same source files for the application 
and the library but in this case contains a Makefile to enable the use 
of the make utility to build the library, application, and link them 
together.


## cmake

The final example in the cmake folder also includes the application
and library source files with CMakeLists.txt files that enable the use of 
the cmake utility to generate the Makefiles that then let us use the 
make utility to build the library, application, and link them together.

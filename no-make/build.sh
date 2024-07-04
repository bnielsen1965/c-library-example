#!/bin/bash

# build the main application

# the target executable name
TARGET="helloworld"

# the main source code
SOURCE="main.c"

# the include path
INCLUDE_PATH="./my-library/"

# the library path
LIBRARY_PATH="./my-library/"

# the library to link
LIBRARY="my-library"

# build the library first
./build-my-library.sh

# clean up before build
rm $TARGET

echo "Building $TARGET from $SOURCE with includes path $INCLUDE_PATH and linking ${LIBRARY} from path ${LIBRARY_PATH}..."

# compile the source and output as target, use -I to specify include path, use -L to specify library path, and use -l to specify library to link
gcc $SOURCE -o $TARGET -I $INCLUDE_PATH -L $LIBRARY_PATH -l$LIBRARY

echo "Complete"

#!/bin/bash

# this is a build script to create the my-library library

# the target library archive file, note that filename must start with "lib" so linker knows it is a library
TARGET_LIBRARY="my-library/libmy-library.a"

# the target library object file
TARGET_OBJECT="my-library/my-library.o"

# path for the library includes
INCLUDES_PATH="./my-library/"

# library source file
TARGET_SOURCE="my-library/my-library.c"

# clean up before build
rm my-library/*.o
rm my-library/*.a

echo "Building $TARGET_OBJECT from $TARGET_SOURCE with includes path $INCLUDES_PATH..."

# use gcc to compile library object file with -c option because this is a library not an executable
gcc $TARGET_SOURCE -c -o $TARGET_OBJECT -I $INCLUDES_PATH

echo "Creating library archive ${TARGET_LIBRARY} from ${TARGET_OBJECT}..."

# create the library archive file that will be used for linking to applications
ar rcs $TARGET_LIBRARY $TARGET_OBJECT

echo "Complete"

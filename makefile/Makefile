
# the target application name
TARGET = helloworld

# the path used for includes
INCLUDE_PATH = ./my-library/

# the path used to link library
LIBRARY_PATH = ./my-library/

# the library name
LIBRARY = my-library

# build target application, require libmy-library.a
$(TARGET): main.c libmy-library.a
	gcc $< -o $@ -I $(INCLUDE_PATH) -L $(LIBRARY_PATH) -l$(LIBRARY)

# build libmy-library.a, require libmy-library.o, note that we are prefixing with lib for the ld command when linking to application
libmy-library.a: libmy-library.o
	ar rcs $(LIBRARY_PATH)$@ $(LIBRARY_PATH)$<

# build libmy-library.0 from my-library/my-library.c, note that we are prefixing with lib for the ld command when linking to appl8ication
libmy-library.o: $(LIBRARY_PATH)my-library.c
	gcc -c $< -o $(LIBRARY_PATH)$@ -I $(INCLUDE_PATH)

clean:
	rm -f $(TARGET) $(LIBRARY_PATH)*.o $(LIBRARY_PATH)*.a

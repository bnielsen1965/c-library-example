cmake_minimum_required(VERSION 3.12)
project(helloworld)

add_subdirectory(my-library)

add_executable(helloworld main.c)

target_link_libraries(helloworld my-library)
# cmake settings for my library

add_library(my-library STATIC)

target_sources(my-library
  PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/my-library.c
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/my-library.h
)

target_include_directories(my-library
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}
)
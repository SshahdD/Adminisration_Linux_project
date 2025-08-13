cmake_minimum_required(VERSION 3.10)
project(CryptoApp C)

# Output directories
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/out/libs)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/out/libs)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/out/bin)

# Include libraries
add_subdirectory(../Modules/caesar_cipher ${CMAKE_BINARY_DIR}/caesar_build)
add_subdirectory(../Modules/xor_cipher ${CMAKE_BINARY_DIR}/xor_build)

# App source
add_executable(output app.c)

# Headers
target_include_directories(output PRIVATE
    ../Modules/caesar_cipher/inc
    ../Modules/xor_cipher/inc
)

# Link libs
target_link_libraries(output PRIVATE caesar xor)


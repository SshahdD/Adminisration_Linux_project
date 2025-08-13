ROOT_DIR=/home/vboxuser/Desktop/shahd/adminproject/part2/project_1
APP_DIR= $(ROOT_DIR)/Application
MODULES_DIR= $(ROOT_DIR)/Modules

# Modules Directories
CAESAR_CIPHER_DIR= $(MODULES_DIR)/caesar_cipher
XOR_CIPHER_DIR= $(MODULES_DIR)/xor_cipher

# Application Directories
APP_OUT_DIR= $(APP_DIR)/out
APP_OBJ_DIR= $(APP_OUT_DIR)/gen
APP_LIB_DIR= $(APP_OUT_DIR)/libs
APP_BIN= $(APP_DIR)/output

# Modules Source files
CAESAR_CIPHER_SRC= $(CAESAR_CIPHER_DIR)/src
XOR_CIPHER_SRC= $(XOR_CIPHER_DIR)/src

# Modules Source files
CAESAR_CIPHER_INC= $(CAESAR_CIPHER_DIR)/inc
XOR_CIPHER_INC= $(XOR_CIPHER_DIR)/inc

# Modules Object files
CAESAR_ENCRYPT_OBJ := $(APP_OBJ_DIR)/caesar_encrypt.o 
CAESAR_DECRYPT_OBJ := $(APP_OBJ_DIR)/caesar_decrypt.o
XOR_ENCRYPT_OBJ= $(APP_OBJ_DIR)/xor_encrypt.o
XOR_DECRYPT_OBJ= $(APP_OBJ_DIR)/xor_decrypt.o

# Modules Library files
CAESAR_CIPHER_LIB := $(APP_LIB_DIR)/libcaesar.a
XOR_CIPHER_LIB := $(APP_LIB_DIR)/libxor.so

# Application Source and Object
APP_SRC := $(APP_DIR)/app.c
APP_OBJ := $(APP_OBJ_DIR)/app.o

# Compiler and flags
CC := gcc
CFLAGS := -Wall -fPIC

# Include module Makefiles
include $(CAESAR_CIPHER_DIR)/caesar_cipher.mk
include $(XOR_CIPHER_DIR)/xor_cipher.mk

.PHONY: all clean

all: $(APP_BIN)
	
# Compile the app source file
$(APP_OBJ): $(APP_SRC)
	$(CC) -c $(APP_SRC) -I$(CAESAR_CIPHER_INC) -I$(XOR_CIPHER_INC) -o $(APP_OBJ)

# Link the final executable with static and dynamic libraries
$(APP_DIR)/output: $(APP_OBJ) $(APP_LIB_DIR)/libcaesar.a $(APP_LIB_DIR)/libxor.so
	$(CC) $(APP_OBJ) $(APP_LIB_DIR)/libcaesar.a -L $(APP_LIB_DIR) -lxor -I. -o $(APP_DIR)/output

clean:
	rm -rf $(APP_OBJ_DIR)/*.o  $(APP_DIR)/output

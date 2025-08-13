# Compile xor.c to object file
$(XOR_ENCRYPT_OBJ): $(XOR_CIPHER_SRC)/xor_encrypt.c 
	$(CC) -c  $(XOR_CIPHER_SRC)/xor_encrypt.c -I $(XOR_CIPHER_INC) -o $(APP_OBJ_DIR)/xor_encrypt.o

$(XOR_DECRYPT_OBJ): $(XOR_CIPHER_SRC)/xor_decrypt.c 
	$(CC) -c  $(XOR_CIPHER_SRC)/xor_decrypt.c -I $(XOR_CIPHER_INC) -o $(APP_OBJ_DIR)/xor_decrypt.o

# Create dynamic library libxor.so from object file
$(APP_LIB_DIR)/libxor.so: $(XOR_ENCRYPT_OBJ) $(XOR_DECRYPT_OBJ)
	$(CC) -shared $(APP_OBJ_DIR)/xor_decrypt.o $(APP_OBJ_DIR)/xor_encrypt.o -o $(APP_LIB_DIR)/libxor.so

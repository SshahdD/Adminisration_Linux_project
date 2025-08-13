# Compile caesar.c to object file
$(CAESAR_ENCRYPT_OBJ): $(CAESAR_CIPHER_SRC)/caesar_encrypt.c 
	$(CC) -c $(CAESAR_CIPHER_SRC)/caesar_encrypt.c  -I $(CAESAR_CIPHER_INC) -o $(APP_OBJ_DIR)/caesar_encrypt.o

$(CAESAR_DECRYPT_OBJ): $(CAESAR_CIPHER_SRC)/caesar_encrypt.c 
	$(CC) -c $(CAESAR_CIPHER_SRC)/caesar_decrypt.c  -I $(CAESAR_CIPHER_INC)  -o $(APP_OBJ_DIR)/caesar_decrypt.o

# Create static library libcaesar.a from object file
$(APP_LIB_DIR)/libcaesar.a: $(CAESAR_ENCRYPT_OBJ) $(CAESAR_DECRYPT_OBJ)
	ar -cr $(APP_LIB_DIR)/libcaesar.a $(APP_OBJ_DIR)/caesar_decrypt.o $(APP_OBJ_DIR)/caesar_encrypt.o

CC		:= g++
#C_FLAGS := -std=c++17 -Wall -Wextra -g
C_FLAGS := -g -std=c++1z

BIN		:= bin
SRC		:= src
INCLUDE	:= include
LIB		:= lib

LIBRARIES	:=

EXECUTABLE	:= main
DSYM := main.dSYM
RM := rm -rf

all: $(BIN)/$(EXECUTABLE)

clean:
	$(RM) $(BIN)/$(EXECUTABLE) $(BIN)/$(DSYM)

run: all
	./$(BIN)/$(EXECUTABLE)

$(BIN)/$(EXECUTABLE): $(SRC)/*
	$(CC) $(C_FLAGS) -I$(INCLUDE) -L$(LIB) $^ -o $@ $(LIBRARIES)
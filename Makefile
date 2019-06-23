CC		:= g++
CC_FLAGS := -g -std=c++1z -Wall -Wextra

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

$(BIN)/$(EXECUTABLE): $(SRC)/* $(INCLUDE)/*
	$(CC) $(CC_FLAGS) -I$(INCLUDE) -L$(LIB) $(SRC)/* -o $@ $(LIBRARIES)
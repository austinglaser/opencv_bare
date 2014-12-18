# Top level makefile, simply calls cmake's generated file in bin directory

# Determine root directory
ROOT_DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))

# Specify binary directory
BIN_DIR := $(ROOT_DIR)/bin

.PHONY: all clean
all:
	@$(MAKE) -C $(BIN_DIR) all

clean:
	@$(MAKE) -C $(BIN_DIR) clean

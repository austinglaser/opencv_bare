# Top level makefile, simply calls cmake's generated file in bin directory

# Determine root directory
ROOT_DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))

# Specify binary directory
BIN_DIR := $(ROOT_DIR)/bin

# Always build these targets
.PHONY: all clean

# Builds all in binary directory
all:
	@$(MAKE) -C $(BIN_DIR) all

# Cleans binary directory
clean:
	@$(MAKE) -C $(BIN_DIR) clean

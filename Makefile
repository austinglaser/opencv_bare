# Top level makefile, simply calls cmake's generated file in bin directory

# Determine root directory
ROOT_DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))

# Specify binary directory
BUILD_DIR := $(ROOT_DIR)/build

# Always build these targets
.PHONY: all clean

# Builds all in binary directory
all:
	@$(MAKE) -C $(BUILD_DIR) all

# Cleans binary directory
clean:
	@$(MAKE) -C $(BUILD_DIR) clean

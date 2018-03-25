THE_MAKEFILE_FILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
THE_BASE_DIR_PATH := $(abspath $(dir $(THE_MAKEFILE_FILE_PATH)))
THE_BIN_DIR_PATH := $(THE_BASE_DIR_PATH)/bin
THE_MAK_DIR_PATH := $(THE_BASE_DIR_PATH)/mak

PATH := $(THE_BIN_DIR_PATH):$(PATH)

default: help
.PHONY: default

help:
	@help-make.sh
.PHONY: help

include $(THE_MAK_DIR_PATH)/*.mk

SHELL := /usr/bin/env bash

DOCKER ?= docker


all:
	$(DOCKER) build -t emacs-lsp/docs-image/docs-image .

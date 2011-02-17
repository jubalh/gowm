# Copyright 2009 The Go Authors. All rights reserved.
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.

include $(GOROOT)/src/Make.inc

TARG=gowm
GOFILES=gowm.go
GOFMT=gofmt -l=true -tabwidth=4 -comments=true -w
CC=clang
CFLAGS += $(shell pkg-config --libs x11)
DIRS=test


include $(GOROOT)/src/Make.cmd

test: format clean xcb all
	./test

format:
	${GOFMT} .


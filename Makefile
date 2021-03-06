#!/usr/bin/make -f

#
# Makefile
#
# Copyright (c) 2016-2017 Franco Masotti (franco.masotti@student.unife.it)
#
# This is free software: you can redistribute it and/or modify it under the
# terms of the Artistic License 2.0 as published by The Perl Foundation.
#
# This source is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE. See the Artistic License 2.0 for more
# details.
#
# You should have received a copy of the Artistic License 2.0 along the source
# as a LICENSE file. If not, obtain it from
# http://www.perlfoundation.org/artistic_license_2_0.
#

test:
	@swipl -s tests/tests.pl -g run_tests,halt -t 'halt(1)'

default: all

all: test

check:
	@echo "none."

install:
	@echo "none."

package: doc

doc:
	@$(MAKE) -C doc
	@mv doc/manual .
	@$(MAKE) -C doc clean

upload:
	@echo "none."


.PHONY: test default all check install package doc upload



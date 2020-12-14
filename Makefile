SHELL = /bin/sh
EMACS ?= emacs
PROFILER =

.PHONY: test deps

# Delete byte-compiled files etc.
clean:
	rm -f *~
	rm -f \#*\#
	rm -f *.elc

test: clean
	$(EMACS) -batch -Q -l test/dummy.el -l counsel-etags.el -l test/counsel-etags-tests.el

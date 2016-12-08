.PHONY: doc

default: help

help:
	@echo 'all - doc data'
	@echo 'doc - Generate the docs'
	@echo 'help   - Show help'

all: doc

doc: ReadMe.pod

ReadMe.pod: doc/cog.swim
	swim --to=pod --complete --wrap < $< > $@

clean:
	rm -fr cog

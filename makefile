SHELL = /bin/sh

## to include config.mk
include ./config.mk

### $* > captures stem(%), $@ > captures target, $^ > captures prereqs
%/pastel: %/hornear.txt %/platano.txt %/fresas.txt
	cat $*/hornear.txt > $@.build \
	&& mv $@.build $@

%/hornear.txt: %/platano.txt %/fresas.txt
	cat $^ > $@.build \
	&& mv $@.build $@

%/fresas.txt: %/platano.txt
	echo "fresas" > $@.build \
	&& mv $@.build $@

%/platano.txt: %/receta
	echo "$(FRUTA)" > $@.build \
	&& mv $@.build $@

### to turn off the auto-removal of intermediate files.
.SECONDARY:


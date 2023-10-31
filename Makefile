ifndef PREFIX
$(error PREFIX is not set. PREFIX is usually set to installation directory prefix)
endif

CMOS = src/lexer.cmo src/parser.cmo src/esy_installer.cmo

${CMOS}:
	make -C src $(shell basename $@)

esy-installer: src/lexer.cmo src/parser.cmo src/esy_installer.cmo
	ocamlc -o $@ str.cma $^ # all dependencies, regardless of whether they're new or old, are needed in the command to build the target

install:
	install esy-installer $(PREFIX)/bin/esy-installer

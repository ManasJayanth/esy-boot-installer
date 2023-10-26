lexer.ml: lexer.mll parser.cmo
	ocamllex $< # only name of the first pre-requisite, lexer.mll

parser.ml parser.mli: parser.mly
	ocamlyacc -v $?

parser.cmo: parser.mli parser.ml # make sure mli is before ml. Otherwise, you'll see, Error: Could not find the .cmi file for interface parser.mli.
	ocamlc -c $?

lexer.cmo: lexer.ml
	ocamlc -c $?

esy_installer.cmo: esy_installer.mli esy_installer.ml
	ocamlc -c $? # only dependencies newer than target need to be built


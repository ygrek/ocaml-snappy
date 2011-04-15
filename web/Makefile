
GEN=index.html
WEB=snappy.forge.ocamlcore.org:/home/groups/snappy/htdocs

html: $(GEN)

%.html: %.brtx
	brtx -html -doc -i $< -o $@

upload: index.html
	rsync -avihz $< $(WEB)/
	make -C .. doc
	rsync -avihz ../_build/src/api.docdir/ $(WEB)/api

clean:
	rm -f $(GEN)


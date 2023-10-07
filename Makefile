build:
	latex academiccv.ins

doc: build
	latexmk -pdf academiccv.dtx

example: doc
	latexmk -pdf example.tex

release: example
	zip release \
		*.sty *.cls academiccv.pdf \
		example.tex example.pdf photo.png \
		README.md LICENSE

clean:
	latexmk -C academiccv.dtx
	rm *.glo
	rm *.hd
	rm *.aux
	rm academiccv.cls
	rm *.sty
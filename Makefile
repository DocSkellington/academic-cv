build:
	latex academiccv.ins

doc: build
	latexmk -pdf academiccv.dtx

example: doc
	latexmk -pdf example.tex

clean:
	latexmk -C academiccv.dtx
	rm *.glo
	rm *.hd
	rm *.aux
	rm academiccv.cls
	rm *.sty
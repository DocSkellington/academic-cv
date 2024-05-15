build:
	latex academiccv.ins

doc: build
	latexmk -pdf academiccv.dtx

example: doc
	latexmk -pdf example.tex

minimal: example
	latexmk -pdf minimal.tex
	convert -density 200 +repage -crop 1300x400+200+300 minimal.pdf -alpha off +repage minimal.png

release: minimal
	zip release \
		*.sty *.cls academiccv.pdf \
		example.tex example.pdf photo.png \
		minimal.tex minimal.pdf minimal.png \
		README.md LICENSE

clean:
	latexmk -C academiccv.dtx
	rm *.glo
	rm *.hd
	rm *.aux
	rm academiccv.cls
	rm *.sty
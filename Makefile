#
.PHONY: Thesis.pdf

#
all:Thesis.pdf

%.tex: %.raw
	./raw2tex $< > $@

%.tex: %.dat
	./dat2tex $< > $@

Thesis.pdf: Thesis.tex
	latexmk -pdf -pdflatex="pdflatex" -use-make Thesis.tex

clean:
	latexmk -CA

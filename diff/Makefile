all: diff.pdf

diff.pdf: prelude.tex diff-cryptography.tex diff-category-theory.tex diff-theory.tex diff-introduction.tex diff-categorical-cryptography.tex *.tex diff-reedthesis.cls diagrams.tex references.bib
	latexmk -pdf -halt-on-error diff.tex

diff-%: ../old/writeup/% ../writeup/%
	latexdiff --add-to-config PICTUREENV=pic ../old/writeup/$* ../writeup/$* > $@

.PHONY: clean
clean:
	-rm -f *.snm *.nav *.vrb *.bbl *.dvi *.ps *.lot *.lof *.toc diff.pdf diff-*.tex *.run.xml
	latexmk -c

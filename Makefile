all: problems/katz-lindell-ch3.pdf

%.pdf: %.md
	pandoc $< -o $@ -d default

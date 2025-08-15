

all: main.pdf

.PHONY: main.pdf
main.pdf:
	latexmk -pdf main.tex

clean:
	latexmk -c -pdf main.tex
	rm -f main.acn main.acr main.alg main.glo  main.slg \
          main.bbl main.gls main.sym main.brf main.ist \
          main.glg main.sbl

distclean:
	latexmk -C -pdf main.tex


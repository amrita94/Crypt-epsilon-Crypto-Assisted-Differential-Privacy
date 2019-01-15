FILE = main
RELATED = references

all:
	pdflatex --jobname=$(FILE).new $(FILE).tex
	bibtex $(FILE).new
	pdflatex --jobname=$(FILE).new $(FILE).tex
	pdflatex --jobname=$(FILE).new $(FILE).tex
	mv $(FILE).new.pdf CrypteCCS2019.pdf
	rm -f *.aux *.bbl *.blg *.dvi *.log *.out *.gz *~

clean:
	rm -f *.aux *.bbl *.blg *.dvi *.log *.out *.gz *~

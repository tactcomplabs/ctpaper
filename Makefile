PAPER =  sample-sigconf
TEX = $(wildcard *.tex)
BIB = sample-base.bib
FIGS = $(wildcard figures/*.pdf figures/*.png graphs/*.pdf graphs/*.png *.eps)
FINAL = MEMSYS20-CIRCUSTENT

.PHONY: all clean

$(PAPER).pdf: $(TEX) $(BIB) $(FIGS)
	echo $(FIGS)
	pdflatex $(PAPER)
	pdflatex $(PAPER)
	bibtex $(PAPER)
	pdflatex $(PAPER)
	pdflatex $(PAPER)
	cp $(PAPER).pdf $(FINAL).pdf
clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.cut $(PAPER).pdf $(FINAL).pdf


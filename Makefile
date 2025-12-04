# Makefile for building the ACM paper

LATEX=pdflatex
BIBTEX=bibtex
TEX=paper.tex
PDF=paper.pdf
BIB=ref.bib

all: $(PDF)

$(PDF): $(TEX) $(BIB)
	$(LATEX) $(TEX)
	$(BIBTEX) $(basename $(TEX))
	$(LATEX) $(TEX)
	$(LATEX) $(TEX)

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.lof *.lot $(PDF)

figs:
	@echo "Figures are in fig/plots/"

.PHONY: all clean figs

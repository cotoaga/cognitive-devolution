MAIN = main
BIBFILE = ../bibliography/references.bib
OUTPUT_DIR = ../output

LATEX = pdflatex
BIBTEX = bibtex
FLAGS = -output-directory=$(OUTPUT_DIR)

all: pdf

pdf:
	@mkdir -p $(OUTPUT_DIR)
	$(LATEX) $(FLAGS) $(MAIN).tex
	cd $(OUTPUT_DIR) && $(BIBTEX) $(MAIN)
	$(LATEX) $(FLAGS) $(MAIN).tex
	$(LATEX) $(FLAGS) $(MAIN).tex

clean:
	rm -f $(OUTPUT_DIR)/*.aux $(OUTPUT_DIR)/*.log $(OUTPUT_DIR)/*.bbl
	rm -f $(OUTPUT_DIR)/*.blg $(OUTPUT_DIR)/*.out $(OUTPUT_DIR)/*.toc
	rm -f $(OUTPUT_DIR)/*.bcf $(OUTPUT_DIR)/*.run.xml

.PHONY: all pdf clean

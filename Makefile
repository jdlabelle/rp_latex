# LaTeX Makefile

# Main document name (without extension)
MAIN = main

# PDF viewer command (uncomment and modify as needed)
# PDFVIEWER = evince
# PDFVIEWER = okular
# PDFVIEWER = xpdf

# Default target
all: $(MAIN).pdf

# Generate PDF
$(MAIN).pdf: $(MAIN).tex $(MAIN).bbl
	pdflatex $(MAIN)
	pdflatex $(MAIN)

# Generate bibliography
$(MAIN).bbl: $(MAIN).aux
	bibtex $(MAIN)

# Generate auxiliary files
$(MAIN).aux: $(MAIN).tex
	pdflatex $(MAIN)

# Clean auxiliary files
clean:
	rm -f $(MAIN).aux $(MAIN).bbl $(MAIN).blg $(MAIN).log $(MAIN).out $(MAIN).pdf

# View PDF (uncomment and modify as needed)
# view: $(MAIN).pdf
# 	$(PDFVIEWER) $(MAIN).pdf &

.PHONY: all clean view 
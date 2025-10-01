# Makefile for Cognitive Devolution 2.0

# Variables
MANUSCRIPT_DIR = 00-manuscript
OUTPUT_DIR = 03-output
PANDOC_DIR = 04-pandoc
BIBLIOGRAPHY = 01-citations/bibliography.bib

# Find all markdown files in order
MARKDOWN_FILES := $(sort $(wildcard $(MANUSCRIPT_DIR)/*.md))

# Default target
all: pdf

# Combine all markdown files
$(OUTPUT_DIR)/combined.md: $(MARKDOWN_FILES)
	@echo "Combining manuscript files..."
	@mkdir -p $(OUTPUT_DIR)
	@cat $(MARKDOWN_FILES) > $@

# Generate PDF
pdf: $(OUTPUT_DIR)/combined.md
	@echo "Generating PDF..."
	pandoc $(OUTPUT_DIR)/combined.md \
		--template=$(PANDOC_DIR)/academic-template.tex \
		--bibliography=$(BIBLIOGRAPHY) \
		--citeproc \
		--pdf-engine=xelatex \
		-o $(OUTPUT_DIR)/cognitive-devolution.pdf
	@echo "PDF generated: $(OUTPUT_DIR)/cognitive-devolution.pdf"

# Generate HTML (for preview)
html: $(OUTPUT_DIR)/combined.md
	@echo "Generating HTML preview..."
	pandoc $(OUTPUT_DIR)/combined.md \
		--standalone \
		--bibliography=$(BIBLIOGRAPHY) \
		--citeproc \
		-o $(OUTPUT_DIR)/cognitive-devolution.html
	@echo "HTML generated: $(OUTPUT_DIR)/cognitive-devolution.html"

# Clean build files
clean:
	@echo "Cleaning build files..."
	@rm -f $(OUTPUT_DIR)/*

# Word count
wordcount: $(OUTPUT_DIR)/combined.md
	@echo "Word count by section:"
	@for file in $(MARKDOWN_FILES); do \
		echo "$$file: $$(wc -w < $$file) words"; \
	done
	@echo "Total: $$(wc -w < $(OUTPUT_DIR)/combined.md) words"

.PHONY: all pdf html clean wordcount

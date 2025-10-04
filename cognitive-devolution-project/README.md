# Cognitive Devolution: The Thermodynamic Collapse of Human Knowledge Systems

Academic paper exploring how human cognitive systems have been systematically simplified to enable extraction by AI systems.

## Building the Paper

From the `manuscript/` directory:
- `make pdf` - Full compile with bibliography
- `make clean` - Clean auxiliary files

## Project Structure

- `manuscript/` - LaTeX source files
  - `main.tex` - Master document
  - `sections/` - Individual section files (00-abstract through 09-conclusion)
  - `Makefile` - Build automation
- `bibliography/` - BibTeX references (references.bib)
- `output/` - Generated PDFs
- `archive/` - Previous versions (original markdown)
- `working-notes/` - Notes and drafts
- `figures/` - Figure assets (11 figures: 1a-1e + 6 analytical diagrams)

## Current Status
**MILESTONE: Pre Figure 1** - Text complete (54-page PDF), visual assets prepared, ready for figure integration

## Metrics
- **Word Count**: ~25,000 words total
  - Main body: ~23,500 words
  - References: ~1,500 words
- **Page Count**: 54 pages (compiled PDF)
- **Sections**: 9 main sections plus preface and abstract
- **Citations**: 73 unique references

## Visual Assets
11 figures prepared in `figures/` directory:
- Figure 1 components: 1a.png, 1b.png, 1c.png, 1d.png, 1e.png
- Analytical diagrams: convergent_validation, effective_cognitive_power, efficiency_collapse, knowledge_worker_paradox, resistance_collapse, sphere-to-vector

## Sections

1. **Abstract** - Paper summary
2. **Preface** - Author's positionality statement
3. **Introduction** - The Expert Paradox
4. **Literature Review** - Fragmented Recognition and Systematic Blindness
5. **Methodology** - Methodological and Theoretical Framework
6. **Historical Analysis** - From Cognitive Cathedrals to Information Rubble
7. **Contemporary Evidence** - The Thermodynamic Collapse in Action
8. **The AI Mirror** - How We Built Machines in Our (Simplified) Image
9. **Reconstruction** - Building Cognitive Sovereignty
10. **Implications** - When Physics Meets Mythology
11. **Conclusion** - The Binary Choice

## Citations

73 unique citations referenced across all sections. All citations must have corresponding entries in `bibliography/references.bib`.

## Requirements

- LaTeX distribution (TeX Live, MiKTeX, etc.)
- pdflatex
- biber (for bibliography processing)
- Required LaTeX packages: biblatex, hyperref, graphicx, booktabs, longtable, amsmath, titlesec, microtype

## Building from Scratch

```bash
cd manuscript
make pdf
```

The compiled PDF will be available at `output/main.pdf`.

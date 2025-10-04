# Cognitive Devolution - Claude Context

## Project Overview
Academic paper exploring how human cognitive systems have been systematically simplified to enable extraction by AI systems. Title: "Cognitive Devolution: The Thermodynamic Collapse of Human Knowledge Systems"

## Current Status (October 2025)

### Recent Activities
- ✅ Created modular LaTeX project structure (commit: c983b7c)
- ✅ Fixed bibliography errors and rebuilt PDF (commit: a0bd6a5)
- ✅ Updated abstract with improved content and equation (commit: cf384fa)
- ✅ Established LaTeX ground layer (commit: 692cbb9)
- ✅ Completed "End of World" milestone (commit: e1283fa)
- ✅ **MILESTONE: "Pre Figure 1"** (commit: ece6592) - Visual assets prepared, ready for figure integration

### Manuscript Status
- **Word Count**: ~25,000 words total (54 pages)
  - Main content (Abstract through Conclusion): ~23,500 words
  - References section: ~1,500 words
  - 9 sections plus preface and abstract
- **Page Count**: 54 pages in compiled PDF format
- **Citations**: 73 unique citations in bibliography/references.bib
- **Format**: Modular LaTeX structure with master document and individual section files
- **Visual Assets**: 11 figures prepared in figures/ directory (Figure 1 components + analytical diagrams)
- **Archive Versions**: PDFs 4, 5, 6 archived showing iterative development
- **Milestone Document**: "Cognitive Devolution 6.pdf" represents Pre-Figure-1 completion state

## Project Structure

### Top Level Organization
```
/Users/kydroon/Development/cognitive-devolution/
├── cognitive-devolution-project/  # Active LaTeX manuscript (primary workspace)
├── 00-manuscript/                 # Legacy numbered sections
├── 01-citations/                  # Bibliography and citation tracking
├── 02-figures/                    # Diagrams and images
├── 03-output/                     # Build artifacts
├── 04-pandoc/                     # LaTeX templates and styling
├── 05-archive/                    # Previous iteration content (VENOM gems)
├── 06-obsidian/                   # Obsidian vault configuration
├── 07-working-notes/              # Active development notes
├── instructions/                  # Phase setup and execution instructions
├── material/                      # Source materials, handovers, visuals
│   ├── handovers/                # Archaeological documentation
│   └── visuals/                  # Figures and diagrams (F1a-f.png)
├── responses/                     # Execution logs and completion reports
├── cognitive-devolution-complete.md  # Complete markdown version
├── preface.md                     # Preface source
├── references.bib                 # Top-level bibliography
├── README.md                      # Project documentation
└── Makefile                       # Top-level build automation
```

### Active Manuscript Structure (cognitive-devolution-project/)
```
cognitive-devolution-project/
├── manuscript/                    # LaTeX source (primary workspace)
│   ├── main.tex                  # Master document
│   ├── Makefile                  # Build automation
│   └── sections/                 # Modular section files
│       ├── 00-abstract.tex
│       ├── 00-preface.tex
│       ├── 01-introduction.tex
│       ├── 02-literature.tex
│       ├── 03-methodology.tex
│       ├── 04-historical.tex
│       ├── 05-contemporary.tex
│       ├── 06-ai-mirror.tex
│       ├── 07-reconstruction.tex
│       ├── 08-implications.tex
│       └── 09-conclusion.tex
├── bibliography/                  # BibTeX references
│   └── references.bib
├── output/                        # Generated PDFs
│   └── main.pdf
├── archive/                       # Previous versions (methodology iterations, PDFs 4-6)
├── working-notes/                 # Notes and drafts
├── figures/                       # Figure assets (POPULATED: 11 figures including Figure 1 components)
└── README.md                      # Build instructions
```

## Manuscript Sections

1. **Abstract** - Paper summary with core equation
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

## Build System

### Primary Build (from manuscript/)
```bash
cd cognitive-devolution-project/manuscript
make pdf        # Full compile with bibliography → output/main.pdf
make clean      # Clean auxiliary files
```

### Legacy Build (from root)
```bash
make pdf        # Generate PDF
make html       # Generate HTML preview
make wordcount  # Check word counts
make clean      # Clean build files
```

## Requirements
- LaTeX distribution (TeX Live, MiKTeX, etc.)
- pdflatex
- biber (for bibliography processing)
- Required packages: biblatex, hyperref, graphicx, booktabs, longtable, amsmath, titlesec, microtype

## Team Roles
- **Infrastructure**: Chronos
- **Content**: Alchemist 1.1
- **Academic Standards**: Dr. Prudence Hedgington

## Git Information
- **Current Branch**: main
- **Repository Status**: Clean
- **Primary Workflow**: Work in cognitive-devolution-project/manuscript/, commit changes from root

## Key Files to Edit
- Section content: `cognitive-devolution-project/manuscript/sections/*.tex`
- Bibliography: `cognitive-devolution-project/bibliography/references.bib`
- Master document: `cognitive-devolution-project/manuscript/main.tex`

## Output Location
Compiled PDF: `cognitive-devolution-project/output/main.pdf`

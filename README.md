# LaTeX Research Paper Template

This repository contains a LaTeX template for academic research papers with the following features:
- Title page
- Double-spaced content with Times New Roman 12pt font
- 1-inch margins
- Page numbers (except on title page)
- APA-style bibliography
- Introduction, Methodology, Results, Discussion, and Conclusion sections

## Prerequisites

To compile this document, you need:
- A LaTeX distribution (e.g., TeX Live, MiKTeX)
- `pdflatex`
- `bibtex`

## Project Structure

- `main.tex`: Main LaTeX document
- `references.bib`: Bibliography entries
- `Makefile`: Compilation automation

## Compilation

The easiest way to compile the document is using the provided Makefile:

```bash
make
```

This will:
1. Run pdflatex on main.tex
2. Run bibtex on main
3. Run pdflatex twice more on main.tex

The final PDF will be generated as `main.pdf`.

## Manual Compilation

If you prefer to compile manually, run these commands in order:

```bash
pdflatex main
bibtex main
pdflatex main
pdflatex main
```

## Adding References

Add your bibliography entries to `references.bib` following the example format:

```bibtex
@article{example2024,
  author={Author, A. and Writer, B.},
  title={An Example Paper Title},
  journal={Journal of Examples},
  year={2024},
  volume={1},
  number={1},
  pages={1--10}
}
```

Cite sources in your text using `\cite{reference_key}`. 
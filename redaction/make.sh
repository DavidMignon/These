#!/bin/sh

f=these

pdflatex  -interaction nonstopmode   $f.tex
bibtex $f
pdflatex -interaction nonstopmode $f.tex
pdflatex -interaction nonstopmode $f.tex
pdflatex -interaction nonstopmode $f.tex

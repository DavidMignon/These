#!/bin/sh

f=rapport

pdflatex $f.tex
bibtex $f
pdflatex $f.tex
pdflatex $f.tex
pdflatex $f.tex

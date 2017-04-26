#!/bin/bash

LATEXMK="latexmk -f -pdf"

PANDOC_ARGS="--verbose --toc --toc-depth=6 --mathjax --highlight-style espresso -s"
PANDOC_HTML="pandoc --css .travis/notes.css --css .travis/highlight.css $PANDOC_ARGS"

if [ $# -gt 0 ] && [ $1 == 'clean' ]; then
  $LATEXMK -C
elif [ $# -gt 0 ]; then
  $PANDOC_HTML $* -o project.html
  $LATEXMK $*
  $LATEXMK -c
fi

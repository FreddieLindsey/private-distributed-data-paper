#!/bin/bash

LATEXMK="latexmk -f -pdf"

if [ $# -gt 0 ] && [ $1 == 'clean' ]; then
  $LATEXMK -C
elif [ $# -gt 0 ]; then
  $LATEXMK $*
  $LATEXMK -c
fi

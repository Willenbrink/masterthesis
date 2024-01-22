#!/usr/bin/env bash

while true; do

    inotifywait -e modify,create,delete -r . && \
        pdflatex thesis.tex -interaction=errorstopmode && \
        # pdflatex thesis.tex -interaction=nonstopmode && \
        # bibtex thesis && \
        # makeglossaries thesis && \
        pdflatex thesis.tex -interaction=errorstopmode || \
        read -p "Press any key to rerun." || \
        break

done

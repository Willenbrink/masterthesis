#!/usr/bin/env bash

while true; do

    inotifywait -e modify,create,delete -r . && \
        pdflatex thesis.tex -interaction=nonstopmode && \
        # pdflatex thesis.tex -interaction=nonstopmode && \
        # bibtex thesis && \
        # makeglossaries thesis && \
        pdflatex thesis.tex -interaction=nonstopmode || \
        read -p "Press any key to rerun." || \
        break

done

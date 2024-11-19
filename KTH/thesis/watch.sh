#!/usr/bin/env bash

while true; do

    inotifywait -e modify,create,delete -r . && \
        #pdflatex -interaction=errorstopmode main_kth.tex && \
        pdflatex -interaction=errorstopmode main_kth.tex && \
        biber main_kth && \
        makeglossaries main_kth && \
        texfot pdflatex -interaction=errorstopmode main_kth.tex && \
        #read -p "Press any key to rerun." || \
        #break
        echo "Done"
done

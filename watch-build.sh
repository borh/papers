#!/bin/bash

bn=${1/.md/}

while true; do
    inotifywait -qe modify $1 article-template.pandoc bibliography/doctors-bibliography.bib # images/*
    pandoc --no-wrap --highlight-style=kate --template=article-template.pandoc --biblatex --latex-engine=lualatex \
           -f markdown \
           --smart \
           -t latex $1 | ./fix-tables.py > tmp-$bn.tex && \
           lualatex --shell-escape --interaction=batchmode tmp-$bn ; biber -U -u tmp-$bn ; mv tmp-$bn.pdf $bn.pdf && cp $bn.pdf ~/Dropbox/My\ Papers/
done
# | ./fix-tables.py
# --bibliography=bibliography/doctors-bibliography.bib

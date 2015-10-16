#!/bin/bash

export PATH=$HOME/texlive/2013/bin/x86_64-linux:$PATH

bn=${1/.md/}

while true; do
    inotifywait -qe modify $1 poster-template.pandoc bibliography/doctors-bibliography.bib # images/*
    pandoc --no-wrap --highlight-style=kate --template=poster-template.pandoc --biblatex --latex-engine=lualatex \
           -f markdown \
           --smart \
           -t latex $1 | ./fix-tables.py > tmp-$bn.tex && \
           lualatex --shell-escape --interaction=batchmode tmp-$bn ; biber -U -u tmp-$bn ; mv tmp-$bn.pdf $bn.pdf && cp $bn.pdf ~/Dropbox/My\ Papers/
done
# | ./fix-tables.py
# --bibliography=bibliography/doctors-bibliography.bib

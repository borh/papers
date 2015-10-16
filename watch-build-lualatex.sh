#!/bin/bash

bn=${1/.tex/}

while true; do
    inotifywait -qe modify $1 bibliography/doctors-bibliography.bib
    lualatex --shell-escape --interaction=batchmode $bn ; bibtex $bn ; lualatex --shell-escape --interaction=batchmode $bn && cp $bn.tex $bn.pdf ~/Dropbox/Baidu/
done

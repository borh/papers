#!/bin/bash

bn=${1/.tex/}

while true; do
    inotifywait -qe modify $1 bibliography/doctors-bibliography.bib
    platex -kanji=utf8 --shell-escape --interaction=batchmode $bn ; bibtex $bn ; platex -kanji=utf8 --shell-escape --interaction=batchmode $bn && xdvipdfmx $bn && cp $bn.tex $bn.pdf ~/Dropbox/Baidu/
    pandoc -f latex -t docx $bn.tex -o $bn.docx && cp $bn.docx ~/Dropbox/Baidu/
done

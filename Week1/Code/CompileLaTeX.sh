#!/bin/bash

shopt -s nullglob




pdflatex $1.tex
pdflatex $1.tex
bibtex $1
pdflatex $1.tex
pdflatex $1.tex
evince $1.pdf &

## Cleanup
if have_any ./*~ then
    rm *~
fi
if have_any ./*.aux then
    rm *.aux
fi
if have_any ./*.dvi then
    rm *.dvi
fi
if have_any ./*.log then
    rm *.log
fi
if have_any ./*.nav then
    rm *.nav
fi
if have_any ./*.out then
    rm *.out
fi
    if have_any ./*.snm then
rm *.snm
fi
if have_any ./*.toc then
    rm *.toc
fi

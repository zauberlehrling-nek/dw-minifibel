#!/bin/bash

TITLE='Dungeon World Mini-Fibel'
AUTHOR='Zauberlehrling Nek'
OUTFILE=dw-minifibel



pdfjam pages/p* pages/_view-last.pdf --pdftitle "$TITLE" --pdfauthor "$AUTHOR" --outfile "out/$OUTFILE-view.pdf"

pdfjam pages/p* --angle 180 --fitpaper true --batch --outfile pages4 --suffix r
cp pages/* pages4/
cat order.txt | xargs pdfjam --nup 2x2 --pdftitle "$TITLE" --pdfauthor "$AUTHOR" --outfile "out/$OUTFILE-print.pdf"


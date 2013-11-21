#!/bin/bash
set -x

echo "Convering to PDF"
pdf=$1.pdf
pandoc -H ~/.vim/scripts/head.sty $1 -o $pdf
open $pdf


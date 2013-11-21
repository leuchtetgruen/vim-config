#!/bin/bash
set -x
html=/tmp/`basename $1`.html
echo "Previewing $1"
pandoc $1 -o $html
open $html
echo "To Convert it to PDF press <leader>c"

#!/bin/bash
set -x
html=`basename $1`.html
echo "Previewing $1"
markdown $1 > /tmp/$html 
open /tmp/$html
echo "To Convert it to PDF press <leader>c"

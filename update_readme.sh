#!/bin/bash

self=`basename $0`

which pandon &> /dev/null
if [ $? -ne 0 ]; then
    pandoc -f rst -t markdown_github -o README.md README.rst
else
    echo "$self requires pandoc to be installed!"
    exit 1
fi

#!/bin/sh

set -ex

lex cat2html.l
gcc -O3 -Wall -Wextra -Wno-sign-compare -pedantic lex.cat2html.c -o cat2html
rm lex.cat2html.c
strip -x cat2html
chmod +x cat2html

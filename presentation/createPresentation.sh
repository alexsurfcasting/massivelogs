#! /bin/bash

# Alex del Valle
# isx47192405
# ASIX
# Projecte 2016
# Generació massiva de logs

# Script que genera una presentació a partir d'un fitxer markdown

pandoc -t html5 \
--template=template.txt \
--standalone \
--section-divs \
--variable theme="black" \
--variable transition="concave" \
presentation.md \
-o presentation.html

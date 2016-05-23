#! /bin/bash

pandoc -t html5 \
--template=template.html \
--standalone \
--section-divs \
--variable theme="black" \
--variable transition="concave" \
presentation.md \
-o presentation.html

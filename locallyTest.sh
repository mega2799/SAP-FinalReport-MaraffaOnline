#!/usr/env/bin bash

curl 'https://raw.githubusercontent.com/ryangrose/easy-pandoc-templates/master/copy_templates.sh' | bash
pandoc  -s --highlight-style kate --toc --template easy_template.html report/main.tex --metadata-file=metadata.yaml  -o index.html
latexmk -pdf report/main.tex

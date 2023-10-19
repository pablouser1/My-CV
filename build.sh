#!/bin/bash
LANGS="spanish english"
FILENAME_TEMPLATE="cv-%s.pdf"
OUT_DIRS=""

[[ -f "build-config" ]] && source build-config

main() {
   for lang in $LANGS; do
    pdflatex -interaction=nonstopmode -jobname=$lang my-cv.tex
    if [[ ! -z $OUT_DIRS ]]; then
        local filename=$(printf $FILENAME_TEMPLATE $lang)
        for outdir in $OUT_DIRS; do
            if [[ -d $outdir ]]; then
                local fullpath="$outdir/$filename"
                cp "$lang.pdf" $fullpath
            fi
        done
    fi
done 
}

main

# My CV
This project contains my multilang CV made using LaTeX and AltaCV

## Dependencies
You first need to get AltaCV, you can do this by running:
```bash
git submodule --init
```

Then, you need the LaTeX dependencies of AltaCV, more info [here](https://github.com/liantze/AltaCV#requirements-and-compilation)

## Build
To build the english version use:
```bash
pdflatex -jobname='english' cv.tex
```

And to build the spanish version use:
```bash
pdflatex -jobname='spanish' cv.tex
```

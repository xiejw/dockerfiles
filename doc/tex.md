# Tex Docker

See https://www.tug.org/texlive/acquire-netinstall.html for details.

## Version

Last tested version: texlive 2018.

## Usage

    docker build -t tex -f Dockerfile.tex .
    TEX_SOURCE=~/tex_source
    docker run --rm -it -v $TEX_SOURCE:/source tex

Or run the tex one-off

    docker run --rm -v `pwd`:/source tex pdftex notes.tex

# Tex Docker

See https://www.tug.org/texlive/acquire-netinstall.html for details.

## Version

Last tested version: [TexLive][TEXLIVE] 2019.

## Usage

    make build_tex
    make run_tex

    # OR manually

    docker build -t xiejw/tex -f Dockerfile.tex .
    TEX_SOURCE=~/tex_source
    docker run --rm -it --hostname mytex -v $TEX_SOURCE:/source tex

Or run the TeX one-off

    docker run --rm -v `pwd`:/source tex pdftex notes.tex

[TEXLIVE]: https://tug.org/texlive/

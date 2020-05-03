# Tex Docker

See https://www.tug.org/texlive/acquire-netinstall.html for details.

## Version

Last tested version: [TexLive][TEXLIVE] 2019.

## Usage

    # To build.
    make xiejw/tex

    # To run the TeX one-off
    docker run --rm -v `pwd`:/workdir xiejw/tex pdftex <local_file.tex>

[TEXLIVE]: https://tug.org/texlive/

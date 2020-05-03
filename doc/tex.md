# Tex Docker

See https://www.tug.org/texlive/acquire-netinstall.html for details.

## Version

Last tested version: [TexLive][TEXLIVE] 2020.

```
$ tex --version
TeX 3.14159265 (TeX Live 2020)
kpathsea version 6.3.2
Copyright 2020 D.E. Knuth.
There is NO warranty.  Redistribution of this software is
covered by the terms of both the TeX copyright and
the Lesser GNU General Public License.
For more information about these matters, see the file
named COPYING and the TeX source.
Primary author of TeX: D.E. Knuth.
```

## Usage

    # To build.
    make xiejw/tex

    # To run the TeX one-off
    docker run --rm -v `pwd`:/workdir xiejw/tex pdftex <local_file.tex>

[TEXLIVE]: https://tug.org/texlive/

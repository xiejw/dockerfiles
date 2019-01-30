# Swift for Debian

Swift has official docker support (see
[here](https://github.com/apple/swift-docker/blob/34aa283f9b3473ab22b2282f71773781b121af19/4.2/Dockerfile)).
However, it is based on Ubuntu, not Debian.

There is no reason to use Debian for Swift Docker. This document is purely
- a good summary about how I configured my Debian server to run Swift.
- I like to use and understand Debian.

## Version

- Swift: 4.2.1
- Debian: Stretch

## Usage

    make build_swift
    # ARGS is optional.
    make ARGS="-v `pwd`:/workdir`" run_swift

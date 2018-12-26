# Swift for Tensorflow Docker

See https://github.com/apple/swift/tree/tensorflow for details.

## Version

Last tested version: Development 2018-12-04.

## Usage

    docker build -t s4tf -f Dockerfile.s4tf .
    WORKDIR=`pwd`
    docker run --rm -it --hostname s4tf -v $WORKDIR:/workdir s4tf

## One-off Execute

    docker run --rm -v `pwd`:/workdir s4tf swift <script_name>

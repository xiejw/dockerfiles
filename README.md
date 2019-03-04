# Dockerfiles.

## Base Image

The base image is `xiejw/baseimage` in Docker hub.

    docker build -t xiejw/baseimage - < Dockerfile.baseimage
    docker login
    docker push xiejw/baseimage


## Other useful docker.

- Swift for Tensorflow: see [here](doc/s4tf.md).
- Plain Tex: see [here](doc/tex.md).

## Docker Cheatsheet

See [here](doc/docker_cheatsheet.md).

# Dockerfiles.

## Base Image

The base image is `xiejw/baseimage` in Docker hub.

    docker build -t xiejw/baseimage - < Dockerfile.baseimage
    docker login
    docker push xiejw/baseimage


## Other useful docker.

- Swift for Debian: see [here](doc/swift.md).
- Swift for Tensorflow: see [here](doc/s4tf.md).
- Tensorflow and Keras: see [here](doc/tensorflow_keras.md).
- Plain Tex: see [here](doc/tex.md).

## Docker Cheatsheet

See [here](doc/docker_cheatsheet.md).

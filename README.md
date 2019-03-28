# Dockerfiles.

## Base Image

The base image is `xiejw/ubuntu` in Docker hub.

    make build_ubuntu
    docker login
    make push_ubuntu

## Other useful docker.

- Cron: Has a special binary `/cron` to calcucate the seconds until next
  schedule. See [here][Cron] for details.
- Plain Tex: see [here](doc/tex.md).
- Swift for Tensorflow: see [here](doc/s4tf.md).

## Docker Cheatsheet

See [here](doc/docker_cheatsheet.md).

[Cron]: https://github.com/xiejw/eva/blob/master/dockerfiles/Dockerfile.cron

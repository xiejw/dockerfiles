# Dockerfiles.

## Base Image

The base image is `xiejw/baseimage` in Docker hub.

    make xiejw/baseimage
    docker login
    docker push xiejw/baseimage

## Other useful docker.

- Cron: Has a special binary `/cron` to calculate the seconds until next
  schedule. See [here][Cron] for details.
- Plain Tex: see [here](doc/tex.md).
- Clang-Format: see [here](doc/clang-format.md).
- MPI: see [here](doc/mpi.md).
- Mp3Tag: See [here](doc/mp3tag.md).

## Docker Cheatsheet

See [here](doc/docker_cheatsheet.md).

## What's in the Debian Base Image?

- Time zone: America - Los Angeles
- Locale: `en_US.UTF-8`

[Cron]: https://github.com/xiejw/eva/blob/master/dockerfiles/Dockerfile.cron


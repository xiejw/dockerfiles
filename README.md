# Dockerfiles.

## Base Image

The base image is `xiejw/ubuntu` in Docker hub.

    make build_ubuntu
    docker login
    make push_ubuntu

## Other useful docker.

- Cron: Has a special binary `/cron` to calculate the seconds until next
  schedule. See [here][Cron] for details.
- Plain Tex: see [here](doc/tex.md).
- Clang-Format: see [here](doc/clang-format.md).
- Swift for Tensorflow: see [here](doc/s4tf.md).
- Mp3Tag: See [here](doc/mp3tag.md).

## Docker Cheatsheet

See [here](doc/docker_cheatsheet.md).

## Why chooses Ubuntu as the Base Image?

Personally, I like Debian. However, Debian stable has very old packages,
compared to Ubuntu. In addition, to use Swift properly, Ubuntu is much easier
given official support.

This decision could be revisited in future.

## What's in the Ubuntu Base Image?

- Time zone: America - Los Angeles
- Locale: `en_US.UTF-8`

[Cron]: https://github.com/xiejw/eva/blob/master/dockerfiles/Dockerfile.cron


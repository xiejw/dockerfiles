# Why

`clang-format` is awesome, but its behavior is not consistent across version and
platforms. This causes the problems that the source files are formatted
diffferently again and again.

So, it makes sense to lock the version.


# How

    # To build
    make xiejw/clang-format

    # To use
    #
    # Note: clang-format might create new files under the user running inside
    # the container. So, to maintain the permission, the uid/gid are overriden
    # here.
    docker run --rm -ti \
        --user `id -u ${USER}`:`id -g ${USER}` \
        -v `pwd`:/workdir xiejw/clang-format \
        /clang-format.sh <dir_list>


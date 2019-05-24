# Why

`swift-format` is awesome, but its behavior is not consistent across version and
platforms. This causes the problems that the source files are formatted
diffferently again and again.

In addition, it is not easy to be installed on Linux.

So, it makes sense to lock the version.


# How

    make build_swift_format
    make run_swift_format
    # or
    docker run --rm -ti -v `pwd`:/source xiejw/swift-format /swift-format.sh <dir>


# Why

`clang-format` is awesome, but its behavior is not consistent across version and
platforms. This causes the problems that the source files are formatted
diffferently again and again.

So, it makes sense to lock the version.


# How

    make build_clang_format
    make run_clang_format
    # or
    docker run --rm -ti -v `pwd`:/source xiejw/clang-format /clang-format.sh "(.h|.cpp)$$"


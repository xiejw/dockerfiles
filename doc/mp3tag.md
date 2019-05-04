# Use Case

For `mp3` files copied from Windows to macOS, the Chinese characters need to be
converted, typically from `gbk` to `unicode`.

# What's included?

Basically, this docker contains the
[Mutagen](https://mutagen.readthedocs.io/en/latest/).

# Usage

## Base Usage

    docker run --rm -ti -v `pwd`:workdir xiejw/mp3tag bash
    mid3iconv -e gbk <file_name>.mp3

## Batch Updates

    docker run --rm -ti -v `pwd`:workdir xiejw/mp3tag bash
    find . -name '[^.]*.mp3' -exec mid3iconv -e gbk {} \;

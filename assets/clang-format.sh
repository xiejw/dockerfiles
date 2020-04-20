#!/bin/sh

if [ $# -eq 0 ]; then
  echo "No argument supplied"
  exit 1
fi

# To generate the style file, run `clang-format -style=Google -dump-config`.
CLANG_FORMAT="/usr/bin/clang-format -i -style=file "

for DIR in "$@"; do
  find ${DIR} -iname *.h -o -iname *.cpp -o -iname *.cc -o -iname *.c | xargs ${CLANG_FORMAT}
done

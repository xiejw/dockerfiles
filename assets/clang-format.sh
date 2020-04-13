#!/bin/sh

set -x

if [ $# -eq 0 ]; then
  echo "No argument supplied"
  exit 1
fi

CLANG_FORMAT="/usr/bin/clang-format -i -style=Google "

for DIR in "$@"; do
  find ${DIR} -iname *.h -o -iname *.cpp -o -iname *.cc -o -iname *.c | xargs ${CLANG_FORMAT}
done

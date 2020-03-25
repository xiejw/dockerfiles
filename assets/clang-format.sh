#!/bin/sh

set -x

if [ $# -eq 0 ]; then
  echo "No argument supplied"
  exit 1
fi

CLANG_FORMAT="/usr/bin/clang-format -i -style=Google "

find $1 -iname *.h -o -iname *.cpp -o -iname *.cc | xargs ${CLANG_FORMAT}

#!/bin/sh

set -x

if [ $# -eq 0 ]; then
  echo "No argument supplied"
  exit 1
fi

CLANG_FORMAT="/usr/bin/clang-format -i -style=Google "

find . -type f | grep -E $1 | xargs ${CLANG_FORMAT}

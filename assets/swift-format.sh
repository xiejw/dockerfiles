#!/bin/sh

set -x

if [ $# -eq 0 ]; then
  echo "No argument supplied"
  exit 1
fi

SWIFT_FORMAT="/usr/bin/swiftformat --swiftversion 5.0 --disable redundantSelf"

for d in "$@"
do
  ${SWIFT_FORMAT} "$d"
done


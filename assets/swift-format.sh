#!/bin/sh

set -x

if [ $# -eq 0 ]; then
  echo "No argument supplied"
  exit 1
fi

# Disable redundantSelf to ensure code consistency.
# Disable consecutiveBlankLines to make blank lines in multi-line string
#    literals correct.
SWIFT_FORMAT="/usr/bin/swiftformat --swiftversion 5.0 --disable redundantSelf,consecutiveBlankLines"

for d in "$@"
do
  ${SWIFT_FORMAT} "$d"
done


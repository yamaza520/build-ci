#!/bin/bash
COMMIT=`git log -n 1 --oneline --pretty=format:"%s"`
echo ${COMMIT}
IFS=' '
set -- $COMMIT

if [ $1 != '[ci]' ]; then
  echo 'skip build'
  exit 0
fi

echo "build end"
exit

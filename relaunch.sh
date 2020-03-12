#!/bin/bash

WORKDIR="/matrixssl"
COMMAND="apps/ssl/server -v 3"

cd ${WORKDIR}

while [ true ]; do
  echo ${COMMAND}
  ${COMMAND} > /dev/null
  echo '...relaunching in 1 s'
  sleep 1
done

exit 0

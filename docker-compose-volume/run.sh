#!/bin/sh
set -ex

cd "$(dirname "$0")"
case $1 in
  remote)
    docker-compose down -v
    rm -f test.dat
    docker-compose up
    ls -lAc test.dat
    rm test.dat
    ;;
  local)
    time dd if=/dev/zero of=test.dat bs=1024 count=1000000
    ;; 
esac

#!/bin/sh
set -ex

cd "$(dirname "$0")"
case $1 in
  remote)
    docker-compose down -v
    docker-compose up
    ;;
  local)
    time dd if=/dev/zero of=test.dat bs=1024 count=1000000
    rm test.dat
    ;; 
esac

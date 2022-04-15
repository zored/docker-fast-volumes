#!/bin/sh
set -ex
case $1 in
  nfs)
    shift
    ./docker-compose-nfs/run.sh "$@"
    ;;
  vanila)
    shift
    ./docker-compose-vanila/run.sh "$@"
    ;;
esac
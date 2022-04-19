#!/bin/sh
set -ex

unset $(compgen -v | grep ^COMPOSE_)
unset $(compgen -v | grep ^DOCKER_)

case $1 in
  nfs)
    shift
    ./docker-compose-nfs/run.sh "$@"
    ;;
  vanila)
    shift
    ./docker-compose-vanila/run.sh "$@"
    ;;
  volume)
    shift
    ./docker-compose-volume/run.sh "$@"
    ;;
esac
#!/bin/sh
HELP=0
[ -z $1 ] && HELP=1
[ "$1" == "-h" ] && HELP=1

if [ ${HELP} -eq 1 ];
then
  echo "USAGE: docker-tag-search TERM"
  exit
fi
TERM=$1
ENDPOINT="https://registry.hub.docker.com"
wget ${ENDPOINT}/v2/repositories/${TERM}/tags/ -O -

# https://registry.hub.docker.com/v2/repositories/microsoft/cntk/tags/
#!/bin/bash

DOCKER_TAG="$(pwd | awk -F/ '{ print $NF }' | awk '{ print tolower($0) }')"

function __build () {
  docker build -t $DOCKER_TAG .
}

function __login () {
  docker run -it $DOCKER_TAG /bin/bash
}

function __root_login () {

  DOCKER_CONTAINER_ID=$(docker ps | grep $DOCKER_TAG | awk {'print $1'})
  docker exec -it --user root $DOCKER_CONTAINER_ID /bin/bash
}

function usage_exit() {
  echo -e "Usage: $0 \n" 1>&2
  declare -F | awk '{ print " " $3 }' | grep "__"
  echo -e "\n"
}

if [ "$1" = "build"  ]; then
  __build
elif [ "$1" = "login" ]; then
  __login
elif [ "$1" = "root_login" ]; then
  __root_login
elif [ "$1" = "" ]; then
  usage_exit
else
  usage_exit
fi

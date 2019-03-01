#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-gohelpfund/adend-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/helpd docker/bin/
cp $BUILD_DIR/src/help-cli docker/bin/
cp $BUILD_DIR/src/help-tx docker/bin/
strip docker/bin/helpd
strip docker/bin/help-cli
strip docker/bin/help-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker

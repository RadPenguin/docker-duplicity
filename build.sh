#!/bin/bash

REPO_NAME=radpenguin/duplicity

BUILD_DATE=$( date +"%Y-%m-%d-%H-%M-%S" )

docker build \
  --no-cache \
  --build-arg=BUILD_DATE="$BUILD_DATE" \
  --build-arg=VERSION="$VERSION" \
  --tag=$REPO_NAME \
  .

docker push $REPO_NAME

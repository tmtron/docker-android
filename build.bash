#!/bin/bash
IMAGE_NAME=docker-android
IMAGE_TAG=$IMAGE_NAME

docker build \
  -t $IMAGE_TAG \
  ../docker-android


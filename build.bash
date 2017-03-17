#!/bin/bash
IMAGE_NAME=gitlab_ci
TAG=8
IMAGE_TAG=$IMAGE_NAME:$TAG

docker build \
  -t $IMAGE_TAG \
  ../gitlab_ci

docker tag $IMAGE_TAG $IMAGE_NAME:latest

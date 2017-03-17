#!/bin/bash
IMAGE_NAME=gitlab_ci

docker run -i -t  \
  $IMAGE_NAME \
  /bin/bash

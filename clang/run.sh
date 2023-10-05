#!/bin/bash
set -e

sudo docker run \
    -it --network host --privileged \
    --name clang \
    -v /dev:/dev \
    -v ~/.ssh:/root/.ssh \
    clang



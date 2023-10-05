#!/bin/bash
set -e

sudo docker run \
    -it --network host --privileged \
    --name cpp \
    -v /dev:/dev \
    -v ~/.ssh:/root/.ssh \
    # -v ~/ws:/ws \
    cpp



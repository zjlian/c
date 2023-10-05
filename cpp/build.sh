#!/bin/bash
set -e

echo "http_proxy: "$http_proxy

sudo docker build \
    --network host \
    --build-arg HTTP_PROXY=$http_proxy \
    --build-arg HTTPS_PROXY=$http_proxy \
    -t cpp src
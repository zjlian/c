#!/bin/bash
set -e

sudo docker stop clang
sudo docker rm clang
sudo docker rmi clang
#!/bin/bash
set -e

sudo docker stop cpp
sudo docker rm cpp
sudo docker rmi cpp
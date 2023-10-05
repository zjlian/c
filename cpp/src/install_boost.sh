#!/bin/bash
set -e

echo "http_proxy: "$http_proxy

wget https://boostorg.jfrog.io/artifactory/main/release/1.83.0/source/boost_1_83_0.tar.bz2

tar -xjf boost_1_83_0.tar.bz2

cd boost_1_83_0

./bootstrap.sh 

./b2 install variant=release link=static threading=multi --without-mpi --without-python

	

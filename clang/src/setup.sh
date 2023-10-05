#!/bin/bash
set -e

echo "http_proxy: "$http_proxy

sed -i s@/archive.ubuntu.com/@/mirrors.tuna.tsinghua.edu.cn/@g /etc/apt/sources.list
apt-get clean
apt-get update

# apt-get install -y build-essential
apt-get install -y cmake

# 安装 llvm 工具链
apt-get install -y lsb-release wget bzip2 software-properties-common gnupg
wget https://apt.llvm.org/llvm.sh
chmod +x llvm.sh
bash ./llvm.sh all

update-alternatives --install /usr/bin/cc cc /usr/bin/clang-17 100
update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++-17  100

# 安装 xmake
wget https://xmake.io/shget.text -O - | bash

apt-get clean && rm -rf /var/lib/apt/lists/*
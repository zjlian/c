# Docker C++ 开发环境

clang/ 目录下的 Dockerfile 会安装 ubuntu22.04/gcc/make/cmake/xmake/clang 等工具，其中 clang 和 xmake 会安装最新版，其余的安装 apt 提供的默认版本。还会将系统 cc 和 c++ 两个编译器的软连接更换为最新版的 clang。 

cpp/ 目录下的 Dockerfile 会基于 clang/ 的镜像额外安装所需的第三方依赖。
FROM clang

COPY install_boost.sh /script/install_boost.sh
RUN cd /script && bash install_boost.sh && rm -rf /script/*

RUN apt-get clean && rm -rf /var/lib/apt/lists/*


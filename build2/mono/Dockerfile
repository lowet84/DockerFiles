FROM lowet84/rar2fsbase
MAINTAINER Fredrik Löwenhamn <fredrik.lowenhamn@gmail.com>

RUN apt-get update && apt-get install -y mono-devel && \
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

FROM phusion/baseimage
RUN apt-get update && apt-get install -y wget cifs-utils && \ 
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

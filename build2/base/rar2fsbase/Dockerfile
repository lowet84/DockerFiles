FROM phusion/baseimage

RUN apt-get update && apt-get install -y libfuse2 wget cifs-utils && \
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

ADD libunrar.so /usr/lib/
ADD rar2fs /usr/bin/
ADD smb.conf /etc/samba/smb.conf
ADD rar2fs.sh /update/rar2fs.sh

RUN mkdir -p /update && mkdir -p /rar2fs


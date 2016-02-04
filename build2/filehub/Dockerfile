FROM ubuntu:15.10

RUN apt-get update && apt-get install -y libfuse2 samba && \
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

ADD libunrar.so /usr/lib/
ADD rar2fs /usr/bin/
ADD start.sh /start.sh
ADD smb.conf /etc/samba/smb.conf

RUN mkdir /update && mkdir /rar2fs
ADD mount.sh /update/mount.sh

RUN chmod u+x /start.sh

VOLUME ["/config"]

ENV RUN_AS_ROOT="true" \
    CHANGE_DIR_RIGHTS="false" \
    CHANGE_CONFIG_DIR_OWNERSHIP="true" \
    HOME="/config"

CMD ["/start.sh"]

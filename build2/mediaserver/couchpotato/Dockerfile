FROM lowet84/rar2fsbase
MAINTAINER Fredrik Löwenhamn <fredrik.lowenhamn@gmail.com>

RUN apt-get update && apt-get install -y curl python && \ 
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

RUN mkdir -p /update
ADD update.sh /update/update.sh
ADD mount.sh /update/mount.sh

RUN mkdir /etc/service/couchpotato
ADD start.sh /etc/service/couchpotato/run
RUN chmod +x /etc/service/couchpotato/run

EXPOSE 5050

ENV RUN_AS_ROOT="true" \
    CHANGE_DIR_RIGHTS="false" \
    CHANGE_CONFIG_DIR_OWNERSHIP="true" \
    HOME="/config"

WORKDIR /update
RUN sh update.sh
CMD ["/sbin/my_init"]

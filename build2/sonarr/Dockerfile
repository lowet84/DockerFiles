FROM lowet84/mono
MAINTAINER Fredrik Löwenhamn <fredrik.lowenhamn@gmail.com>

RUN apt-get update && apt-get install -y curl unzip && \ 
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

RUN mkdir /update
ADD update.sh /update/update.sh
ADD mount.sh /update/mount.sh

RUN mkdir /etc/service/sonarr
ADD start.sh /etc/service/sonarr/run
RUN chmod +x /etc/service/sonarr/run

EXPOSE 8989
EXPOSE 9898
VOLUME ["/config","/data"]

ENV RUN_AS_ROOT="true" \
    CHANGE_DIR_RIGHTS="false" \
    CHANGE_CONFIG_DIR_OWNERSHIP="true" \
    HOME="/config"

WORKDIR /update
RUN sh update.sh
CMD ["/sbin/my_init"]

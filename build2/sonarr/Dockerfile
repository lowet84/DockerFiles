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

ADD ./start.sh /start.sh
RUN chmod u+x  /start.sh

EXPOSE 8989
EXPOSE 9898
VOLUME ["/config","/data"]

ENV RUN_AS_ROOT="true" \
    CHANGE_DIR_RIGHTS="false" \
    CHANGE_CONFIG_DIR_OWNERSHIP="true" \
    HOME="/config"

WORKDIR /update
RUN sh update.sh
CMD ["/start.sh"]

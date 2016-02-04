FROM lowet84/mono
MAINTAINER Fredrik Löwenhamn <fredrik.lowenhamn@gmail.com>

RUN apt-get update && apt-get install -y curl libcurl3 unzip && \ 
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

RUN mkdir /update
ADD update.sh /update/update.sh

RUN mkdir /etc/service/jackett
ADD start.sh /etc/service/jackett/run
RUN chmod +x /etc/service/jackett/run

EXPOSE 9117
#VOLUME ["/config","/data"]

ENV RUN_AS_ROOT="true" \
    CHANGE_DIR_RIGHTS="false" \
    CHANGE_CONFIG_DIR_OWNERSHIP="true" \
    HOME="/config"

WORKDIR /update
RUN sh update.sh
CMD ["/sbin/my_init"]

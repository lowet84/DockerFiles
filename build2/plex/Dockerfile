FROM ubuntu:15.10
MAINTAINER Fredrik Löwenhamn <fredrik.lowenhamn@gmail.com>

RUN apt-get update && apt-get install -y wget cifs-utils && \ 
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

RUN mkdir /update
ADD plexupdate.sh /update/plexupdate.sh
ADD Preferences.xml /update/Preferences.xml
ADD mount.sh /update/mount.sh

RUN chmod + /update/plexupdate.sh
WORKDIR /update
RUN ./plexupdate.sh -p -a

VOLUME ["/config","/data"]

ADD ./start.sh /start.sh
RUN chmod u+x  /start.sh

ENV RUN_AS_ROOT="true" \
    CHANGE_DIR_RIGHTS="false" \
    CHANGE_CONFIG_DIR_OWNERSHIP="true" \
    HOME="/config"

EXPOSE 32400

CMD ["/start.sh"]

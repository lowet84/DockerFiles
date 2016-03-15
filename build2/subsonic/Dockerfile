FROM lowet84/rar2fsbase
MAINTAINER Fredrik Löwenhamn <fredrik.lowenhamn@gmail.com>

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    apt-get update && \
    apt-get dist-upgrade --yes --no-install-recommends --no-install-suggests && \
    apt-get install --yes --no-install-recommends --no-install-suggests openjdk-7-jre-headless locales && \
    apt-get clean

RUN mkdir -p /update 
ADD mount.sh /update/mount.sh
ADD update.sh /update/update.sh

WORKDIR /update
RUN sh update.sh

VOLUME ["/config","/data"]

RUN mkdir /etc/service/subsonic
ADD start.sh /etc/service/subsonic/run
RUN chmod +x /etc/service/subsonic/run

ENV RUN_AS_ROOT="true" \
    CHANGE_DIR_RIGHTS="false" \
    CHANGE_CONFIG_DIR_OWNERSHIP="true" \
    HOME="/config"

EXPOSE 4040

CMD ["/sbin/my_init"]

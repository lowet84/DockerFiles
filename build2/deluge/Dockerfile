FROM lowet84/sambabase
MAINTAINER Fredrik Löwenhamn <fredrik.lowenhamn@gmail.com>

VOLUME ["/config","/data"]
RUN mkdir /update
ADD mount.sh /update/mount.sh

RUN add-apt-repository ppa:deluge-team/ppa
ADD sources.list /etc/apt/
RUN apt-get update -qq
RUN apt-get install -qy deluged deluge-web unrar unzip p7zip

RUN mkdir /etc/service/deluge
ADD start.sh /etc/service/deluge/run
RUN chmod +x /etc/service/deluge/run

ENV RUN_AS_ROOT="true" \
    CHANGE_DIR_RIGHTS="false" \
    CHANGE_CONFIG_DIR_OWNERSHIP="true" \
    HOME="/config"

EXPOSE 8112
EXPOSE 58846

CMD ["/sbin/my_init"]

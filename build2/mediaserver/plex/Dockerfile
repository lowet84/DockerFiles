FROM lowet84/rar2fsbase
MAINTAINER Fredrik Löwenhamn <fredrik.lowenhamn@gmail.com>

RUN mkdir -p /update 
ADD plexupdate.sh /update/plexupdate.sh
ADD Preferences.xml /update/Preferences.xml
ADD mount.sh /update/mount.sh

RUN chmod + /update/plexupdate.sh
WORKDIR /update
RUN ./plexupdate.sh -p -a

VOLUME ["/root/Library"]

RUN mkdir /etc/service/plex
ADD start.sh /etc/service/plex/run
RUN chmod +x /etc/service/plex/run

ENV RUN_AS_ROOT="true" \
    CHANGE_DIR_RIGHTS="false" \
    CHANGE_CONFIG_DIR_OWNERSHIP="true" \
    HOME="/config" \
    USEMOUNT="true"

EXPOSE 32400

CMD ["/sbin/my_init"]

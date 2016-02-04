FROM lowet84/sambabase
MAINTAINER Fredrik Löwenhamn <fredrik.lowenhamn@gmail.com>

RUN mkdir /update 
ADD plexupdate.sh /update/plexupdate.sh
ADD Preferences.xml /update/Preferences.xml
ADD mount.sh /update/mount.sh
#ADD libunrar.so /usr/lib
#ADD rar2fs /usr/bin

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

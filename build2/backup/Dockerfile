FROM lowet84/sambabase
MAINTAINER Fredrik Löwenhamn <fredrik.lowenhamn@gmail.com>

RUN apt-get update && apt-get install -y rsync && \ 
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

ADD mount.sh /update/mount.sh
ADD start.sh /start.sh
RUN chmod +x /start.sh

ENV RUN_AS_ROOT="true" \
    CHANGE_DIR_RIGHTS="false"

CMD ["/start.sh"]
